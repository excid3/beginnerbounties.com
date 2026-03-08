class Application < ApplicationRecord
  belongs_to :user
  belongs_to :bounty
  
  validates :user_id, presence: true
  validates :bounty_id, presence: true
  validates :message, presence: true, length: { minimum: 10 }
  
  enum status: { pending: 0, accepted: 1, rejected: 2 }
  
  scope :recent, -> { order(created_at: :desc) }
end
