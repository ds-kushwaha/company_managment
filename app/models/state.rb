class State < ApplicationRecord
  belongs_to :country
  has_many :states, dependent: :destroy
end
