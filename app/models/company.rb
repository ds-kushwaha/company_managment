class Company < ApplicationRecord
	belongs_to :city
	has_many :images
	
end
