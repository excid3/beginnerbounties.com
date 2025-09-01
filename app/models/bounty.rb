class Bounty < ApplicationRecord
  STATUSES = %w[open assigned complete]

  belongs_to :user
  has_rich_text :description
  to_param :title

  scope :sorted, -> { in_order_of(:status, STATUSES).order(created_at: :desc) }
  scope :filtered, ->(status) { where(status: status) }

  validates :amount, presence: true, numericality: {greater_than: 0, only_integer: true}
  validates :description, presence: true
  validates :status, inclusion: {in: STATUSES}
  validates :title, presence: true
  validates :url, presence: true, format: {with: /\Ahttps?:\/\//}
end
