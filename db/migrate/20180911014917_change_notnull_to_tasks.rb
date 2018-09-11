class ChangeNotnullToTasks < ActiveRecord::Migration[5.2]
  def change
    change_column :tasks, :title, :string, null: false, default: "", limit: 500
    change_column :tasks, :content, :text, null: false, default: "", limit: 10000
    change_column :tasks, :limit_time, :date, null: false
    change_column :tasks, :status, :integer, null: false, limit: 4
    change_column :tasks, :priority_color, :string, null: false

    change_column :users, :name, :string, null: false, default: "", limit: 500
    change_column :users, :email, :string, null: false, default: "", limit: 500
    change_column :users, :password_digest, :string, null: false, default: "", limit: 500

    change_column :labels, :label_name, :string, null: false, default: "", limit: 500
  end
end

# テキストとステータスがリミットかかってない
