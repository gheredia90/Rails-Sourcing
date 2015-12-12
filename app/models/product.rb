class Product < ActiveRecord::Base

	validates :title, presence: true, uniqueness: true
    has_many :bids
    belongs_to :user
end
