class Micropost < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :category, presence: true
  validates :buysell, presence: true, inclusion: { in: ['Buy', 'Sell'] }
  validates :title, presence: true, length: { maximum: 100 }
  validates :content, presence: true, length: { maximum: 240 }
  validates :contact_detail, presence: true, length: { maximum: 50 }
  validates :amount, numericality: {greater_than_or_equal_to: 1, less_than: 999999999}, presence: false, allow_nil: true
end
