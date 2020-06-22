class System < ApplicationRecord
  belongs_to :gym
  has_many :grades, -> { order('difficulty') }, dependent: :destroy
  accepts_nested_attributes_for :grades, allow_destroy: true
end
