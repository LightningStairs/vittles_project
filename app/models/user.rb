class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 has_many :user_cookbooks
 has_many :cookbooks, through: :user_cookbooks
 has_many :created_cookbooks, class_name: "Cookbook", foreign_key: :creator_id


  validates :first_name, presence: true
  validates :last_name, presence: true
end
