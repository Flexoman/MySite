class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :status
      t.string :priority

      t.timestamps null: false
    end
  end
end
