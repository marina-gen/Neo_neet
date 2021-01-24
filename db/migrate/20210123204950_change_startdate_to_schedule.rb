class ChangeStartdateToSchedule < ActiveRecord::Migration[6.0]
  def change
    change_column :schedules, :startdate, :datetime
    change_column :schedules, :enddate, :datetime
  end
end
