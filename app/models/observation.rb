class Observation < ApplicationRecord
  has_one :author, class_name: "User", foreign_key: "author_id"
  belongs_to :user
  validates :comment, length: { maximum: 300 }, presence: true
end
