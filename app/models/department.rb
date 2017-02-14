class Department < ApplicationRecord
  validates :name, length: { maximum: 140 }, presence: true, uniqueness: true
  validates :description, length: { maximum: 300 }, presence: true
  validates :repository_url, length: { maximum:500 }
  validates :repository_user, length:{ maximum: 140 }
  validates :repository_password, length: { maximum:140 }
end
