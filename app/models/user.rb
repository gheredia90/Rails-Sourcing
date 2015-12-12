
class User < ActiveRecord::Base

	validates :name, presence: true, uniqueness: true
    
    has_many :products
    has_many :bids
end
