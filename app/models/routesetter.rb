class Routesetter < ApplicationRecord
	belongs_to :gym

	validates :user_id, uniqueness: { scope: :gym_id }
end
