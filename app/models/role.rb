class Role < ApplicationRecord
  has_one :user, as: author
  belongs_to :user
end
