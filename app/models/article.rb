class Article < ActiveRecord::Base
#  def to_param
#    "#{id} #{article_title}".parameterize
#  end
#  extend FriendlyId
#  friendly_id :article_title, :use => [:slugged, :history]
  
  has_many :comments, :as => :commentable
  
  validates :article_title, :presence => true
  validates :body, :presence => true
  validates :author, :presence => true
  
  scope :popular, order("articles.date_published desc")
  scope :recent, order("articles.date_published desc").limit(5)
#  scope :flagged, order(" articles.flag_count desc, articles.created_at desc").recent
end
