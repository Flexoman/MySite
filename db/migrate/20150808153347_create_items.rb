class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.float         :price
      t.string       :name
      t.boolean     :real
      t.float          :weight
      t.string        :description
      t.timestamps null: false
    end
    #add_index :item, :price
    #add_index :item, :name
  end
end
