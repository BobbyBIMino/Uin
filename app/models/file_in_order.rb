class FileInOrder < ActiveRecord::Base
	belongs_to :order
	default_scope -> { order('created_at DESC') }  	
  	validates :order_id, presence: true
end
