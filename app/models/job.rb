class Job < ApplicationRecord
  belongs_to :user
  has_one :department
  has_one :role
  validate :valid_dates

  def valid_dates
    return if [start_date.blank?, finish_date.blank?].any?
    if start_date < finish_date
      errors.add(:finish_date, 'cannot be before the starting date')
    end
  end
end
