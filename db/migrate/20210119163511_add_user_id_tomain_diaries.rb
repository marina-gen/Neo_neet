class AddUserIdTomainDiaries < ActiveRecord::Migration[6.0]
  def up
    execute 'DELETE FROM main_diaries;'
    add_reference :main_diaries, :user, null: false, index: true
  end
  
  def down
    remove_reference :main_diaries, :user, index: true
  end
end
