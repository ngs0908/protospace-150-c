class Prototype < ApplicationRecord
  has_one_attached :image

  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validate :validate_image_presence

  private
  def validate_image_presence
    unless image.attached?
      errors.add(:image, "must be attached")
    end
  end
  
end
