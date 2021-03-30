class Comment < ApplicationRecord
  belongs_to :article

  validates :name, presence: true
  validates :email, presence: true

  validates :body, presence: true
  validates :body, length: { maximum: 4000 }
end
