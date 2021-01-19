class AddUserIdToSchedules < ActiveRecord::Migration[6.0]
  def up
    execute 'DELETE FROM schedules;'
    add_reference :schedules, :user, null: false, index: true
  end
  
  def down
    remove_reference :schedules, :user, index: true
  end
end

