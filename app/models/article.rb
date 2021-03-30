class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :images, as: :imageable
  
  belongs_to :user

  validates :title, presence: true
  validates :title, length: { maximum: 140 }

  validates :body, presence: true
  validates :body, length: { maximum: 4000 }

  def subject
    title
  end
end