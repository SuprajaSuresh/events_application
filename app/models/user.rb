class User < ActiveRecord::Base
  attr_accessible :email, :gender, :password, :password_confirmation, :name
  has_and_belongs_to_many :events
 
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  before_create :create_remember_token
  before_save { |user| user.email = email.downcase }

  validates :email, :presence => true, :format => { :with => VALID_EMAIL_REGEX }, 
  					:uniqueness => { :case_sensitive => false }
  validates :password, :presence => true, :length => { :minimum =>  8}
  validates :gender, :presence => true
  validates :name, :presence => true
  validates :password_confirmation, :presence => true
  validates_confirmation_of :password

  has_secure_password

  private
  def create_remember_token
    self.remember_token = SecureRandom.urlsafe_base64
  end 
end
