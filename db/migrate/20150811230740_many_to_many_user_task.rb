class ManyToManyUserTask < ActiveRecord::Migration
  def change

      create_table :tasks_users, id: false  do |f|
        f.integer   :task_id
        f.integer   :user_id
          end
  end
end
