class Post < ApplicationRecord

    mount_uploader :image, ImageUploader

    geocoded_by :address
    after_validation :geocode

    #アソシエーション(1:多)
    belongs_to :user

    has_many :likes, dependent: :destroy
    has_many :liked_users, through: :likes, source: :user
    has_many :comments, dependent: :destroy

end
