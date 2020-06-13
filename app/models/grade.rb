class Grade < ApplicationRecord
  belongs_to :system, optional: true
end
