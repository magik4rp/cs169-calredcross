class Photo < ApplicationRecord
    has_many :fav_photos
    has_many :users, through: :fav_photos
end
