class Route < ApplicationRecord
	belongs_to :sett, optional: true
	belongs_to :wall, optional: true
	belongs_to :gym, optional: true
	belongs_to :grade, optional: true
end
