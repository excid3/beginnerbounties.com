class Bounty < ApplicationRecord
  STATUSES = %w[open assigned complete]

  belongs_to :user
  has_rich_text :description

  scope :sorted, -> { in_order_of(:status, STATUSES).order(created_at: :desc) }
  scope :last_fifteen_open_bounties, -> { where(status: "open").last(15) }

  validates :amount, presence: true, numericality: {greater_than: 0, only_integer: true}
  validates :description, presence: true
  validates :status, inclusion: {in: STATUSES}
  validates :title, presence: true
  validates :url, presence: true, format: {with: /\Ahttps?:\/\//}
end
