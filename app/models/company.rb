class Company < ApplicationRecord
	has_many :gyms, dependent: :destroy
	validates :name, presence:true, length: {minimum: 1}
end
