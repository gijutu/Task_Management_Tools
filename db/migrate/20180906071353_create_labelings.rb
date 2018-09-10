class CreateLabelings < ActiveRecord::Migration[5.2]
  def change
    create_table :labelings do |t|
      t.integer :label_id
      t.integer :task_id
    end
  end
end
