class Observation < ApplicationRecord
  has_one :user, as: :author
  belongs_to :user
end
