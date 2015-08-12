class User < ActiveRecord::Base
    #attr_accessible :name, :surname, :email

    has_one                                  :user_infos

    has_and_belongs_to_many   :task

  validates :name, :presence => true, :length => { :minimum => 4 }
  validates :surname, :presence => true, :length => { :minimum => 3 }
  validates :email, :presence => true, :length => { :minimum => 7 }

#def full_name(:id)
#      render text: " #{:name} , #{:surname} "
#end


end
