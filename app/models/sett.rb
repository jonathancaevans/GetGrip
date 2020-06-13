class Sett < ApplicationRecord
	belongs_to :gym
	has_many :routes
	accepts_nested_attributes_for :routes
end