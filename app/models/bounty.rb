class Bounty < ApplicationRecord
  belongs_to :user
  has_rich_text :description

  STATUSES = %w[open assigned in_progress complete]

  validates :status, inclusion: {in: STATUSES}

  validates :title, presence: true
  validates :description, presence: true
  validates :url, presence: true
  validates :amount, presence: true, numericality: {greater_than: 0, only_integer: true}
end
