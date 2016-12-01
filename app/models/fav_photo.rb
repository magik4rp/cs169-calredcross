class FavPhoto < ApplicationRecord
  belongs_to :user_id
  belongs_to :photo_id
end
