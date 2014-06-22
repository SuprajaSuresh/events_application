class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
    	t.datetime :date_and_time
    	t.string :name
      t.timestamps
    end
  end
end
