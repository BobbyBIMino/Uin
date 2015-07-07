class Order < ActiveRecord::Base
	belongs_to :user
	default_scope -> { order('created_at DESC') }  	
  	validates :user_id, presence: true
	has_many :File_in_order 

end
