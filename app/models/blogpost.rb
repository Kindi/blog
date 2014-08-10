class Blogpost < ActiveRecord::Base
  validates :title, presence: true, length: { maximum: 50 }
  validates :content, presence:true
  default_scope -> { order('created_at DESC') }
  
  def self.search(search)
    if search
      search.downcase!
      where('content ILIKE ?', "%#{search}%") + where('title   ILIKE ?', "%#{search}%")
    else
      all
    end
  end
  
end
