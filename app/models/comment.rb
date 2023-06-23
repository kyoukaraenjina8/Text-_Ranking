class Comment < ApplicationRecord

  belongs_to :user
  belongs_to :post

  validates :comment_introduction, presence: true, length: {maximum: 120}
  validates :total_score, presence: true
  validates :read_score, presence: true
  validates :price_score, presence: true
  validates :usability_score, presence: true
end
