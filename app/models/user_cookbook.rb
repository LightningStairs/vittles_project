class UserCookbook < ApplicationRecord
  belongs_to  :user
  belongs_to  :cookbook
end
