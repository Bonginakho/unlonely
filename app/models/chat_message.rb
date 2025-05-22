class ChatMessage < ApplicationRecord
  belongs_to :user, class_name: 'User'
  belongs_to :receiver, class_name: 'User'
  validates :content, presence: true
end
