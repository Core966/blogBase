class Blog < ActiveRecord::Base
  attr_accessible :body, :draft, :published_at, :title, :user_id, :visitors
  validates :user_id, presence: true
end
