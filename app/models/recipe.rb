class Recipe < ApplicationRecord
  belongs_to  :user
  belongs_to  :cookbook
  has_many    :ingredients
  has_many    :instructions

  validates :title, presence: true
end
