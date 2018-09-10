class AddTimestampToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :created_on, :datetime
  end
end
