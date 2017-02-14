class Role < ApplicationRecord
  validates :title, length: { maximum: 140 }, presence: true, uniqueness: true
  validates :description, length: { maximum: 300 }, presence: true
  validate :validate_hourly_intensity

  def validate_hourly_intensity
    if max_hourly_intensity < min_hourly_intensity
      errors.add(:max_hourly_intensity, 'cannot be less than the minimum hourly intensity')
    end
  end
end
