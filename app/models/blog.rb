class Blog < ApplicationRecord
	enum status: { draft: 0, published: 1 }
  extend FriendlyId
  friendly_id :title, use: :slugged
# Make sure to put :topic_id back in here when done
  validates_presence_of :title, :body

  belongs_to :topic

  has_many :comments, dependent: :destroy

  def self.recent
    order("created_at DESC")
  end
end