class Cookbook < ApplicationRecord
  has_many :user_cookbooks
  has_many :users, through: :user_cookbooks

  belongs_to :creator, :class_name => "User", :foreign_key => :creator_id

  validates :title, presence: true
  validates :title, presence: true

end
