class Ingredient < ApplicationRecord
  belongs_to  :recipe

  validates :name, presence: true
  validates :quantity, presence: true
  validates :unit_of_measurement, presence: true
end
