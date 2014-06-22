class Event < ActiveRecord::Base
  attr_accessible :date_and_time, :name

  has_and_belongs_to_many :users

  def past?
  	self.date_and_time < Time.now
  end
end
