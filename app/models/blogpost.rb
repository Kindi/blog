class Blogpost < ActiveRecord::Base
  validates :title, presence: true, length: { maximum: 50 }
  validates :content, presence:true
  default_scope -> { order('created_at DESC') }
end
