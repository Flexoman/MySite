class Task < ActiveRecord::Base

has_and_belongs_to_many :user


      validates :user_id, :presence => true
      validates :education, :presence => true, :length => { :minimum => 3 }
      validates :family, :presence => true, :length => { :minimum => 3 }
      validates :age, :presence => true

end
