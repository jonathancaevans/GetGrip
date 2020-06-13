class Wall < ApplicationRecord
 	belongs_to :gym
 	has_many :routes
end
