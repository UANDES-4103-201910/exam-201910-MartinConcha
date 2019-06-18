class Product < ApplicationRecord
	has_many :orders

	validates :brand, presence: true
	validates :model, presence: true
	validates :price, presence: true, numericality: true
	validates :short, presence: true
	validates :long, presence: true
end
