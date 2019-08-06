class Company < ApplicationRecord
	belongs_to :country
	belongs_to :city
	belongs_to :state
end
