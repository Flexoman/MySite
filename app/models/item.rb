class Item < ActiveRecord::Base
  # arrt_accessible :price, :name, :real, :waight, :description

validates :price, numericality:{ greater_than: 0, allow_nil: true}
validates :name, :description, presence: true

#validates :title, :presence => true, :length => { :minimum => 5 }

#after_initialize {|user| puts "intialized" } #Item.new; Item.first
#after_save { puts "saved"}   #Item.save; Item. create; item.update_attributes()
#after_create { ItemMailer.new_item_created(self).deliver }
#after_update { puts "uppdated"}
#after_destroy{ category.inc(:item_count, -1)}

end
