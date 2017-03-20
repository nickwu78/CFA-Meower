class Post < ApplicationRecord
  acts_as_likeable
  has_many :likes
  belongs_to :user

  mount_uploader :picture, PictureUploader
end