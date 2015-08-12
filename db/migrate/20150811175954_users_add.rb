class UsersAdd < ActiveRecord::Migration


    def up
   remove_column :users, :content,  :text
   remove_column :users, :title, :string
    end


end
