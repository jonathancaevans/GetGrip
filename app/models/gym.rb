class Gym < ApplicationRecord
	has_many :walls, dependent: :destroy
	has_many :setts
	has_many :routes
	has_many :hold_colors, dependent: :destroy
	has_many :systems, dependent: :destroy
	
 	belongs_to :company
end