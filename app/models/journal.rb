class Journal < ApplicationRecord
  belongs_to :user, optional: true
  has_one :reflection
end
