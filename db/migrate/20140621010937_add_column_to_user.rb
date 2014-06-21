class AddColumnToUser < ActiveRecord::Migration
  def change
    remove_column :users, :course_id
    add_column :users, :role, :integer, default: 0
  end
end
