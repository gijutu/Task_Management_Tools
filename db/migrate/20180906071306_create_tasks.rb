class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :content
      t.date :limit_time
      t.integer :status
      t.string :priority_color
    end
  end
end
