class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.string :name, null: false
      t.datetime :startdate, null: false
      t.datetime :enddate, null: false
      t.text :memo
      
      t.timestamps
    end
  end
end
