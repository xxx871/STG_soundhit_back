class UserLowNote < ApplicationRecord
  belongs_to :user
  belongs_to :note

  vvalidates :user_id, uniqueness: true
end
