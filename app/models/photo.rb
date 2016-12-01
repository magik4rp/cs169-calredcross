class Photo < ApplicationRecord
    has_many :favoritephotos
    has_many :users, through: :favoritephotos
end
