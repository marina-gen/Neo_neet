class ChangeColumnToNotUnique < ActiveRecord::Migration[6.0]
  def up
    change_column :main_diaries, :today, :date, null: false
  end

  def down
    change_column :main_diaries, :today, :date, null: false, unique: true
  end
end
