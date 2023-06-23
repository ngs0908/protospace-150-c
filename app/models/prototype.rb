class Prototype < ApplicationRecord
  has_one_attached :image

  belongs_to :user

  validates :title, presence: true
  validates :catch_copy, presence: true
  validates :concept, presence: true
  validate :validate_image_presence

  private

  def validate_image_presence
    return if image.attached?

    errors.add(:image, 'must be attached')
  end
end
