class CreateUserInfos < ActiveRecord::Migration
  def change
    create_table :user_infos do |t|
      t.float :age
      t.string :education
      t.string :family

      t.timestamps null: false
    end
  end
end
