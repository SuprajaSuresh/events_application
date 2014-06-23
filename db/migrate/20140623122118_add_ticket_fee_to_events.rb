class AddTicketFeeToEvents < ActiveRecord::Migration
  def change
    add_column :events, :ticket_fee, :integer
  end
end
