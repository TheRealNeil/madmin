class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, as: :commentable
  has_rich_text :body
  has_one_attached :image
  has_many_attached :attachments

  scope :recent, -> { where(created_at: 2.weeks.ago..) }

  validates :title, presence: true
end
