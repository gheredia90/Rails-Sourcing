class Bid < ActiveRecord::Base
	validates :amount, presence: true, numericality: true

	belongs_to :product
	belongs_to :user
end
