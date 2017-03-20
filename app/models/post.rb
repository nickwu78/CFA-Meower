class Post < ApplicationRecord
  acts_as_likeable
  has_many :likes
  belongs_to :user
  validate :picture_size

  mount_uploader :picture, PictureUploader

  private

  def picture_size
    if picture.size > 5.megabytes
      errors.add(:picture, "should be less than 5MB")
    end
  end
end