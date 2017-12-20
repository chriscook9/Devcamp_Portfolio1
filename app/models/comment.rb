class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :blog

  validates :content, presence: true, lentgh: { minimum: 5, maximum: 1000}
end
