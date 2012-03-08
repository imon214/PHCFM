class Comment < ActiveRecord::Base
#  extend FriendlyId
#  friendly_id :name#, :use => [:slugged, :scoped], :scope => :commentable_id

  belongs_to :commentable, :polymorphic => true
  has_many :comments, :as => :commentable
#  has_friendly_id :name, :use_slug => true, :scope => :commentable_id #--> in version 3.x
  
  validates :name, :presence => true
  validates :email, :presence => true
  validates :body, :presence => true
  
  def article
    return @article if defined?(@article)
    @article = commentable.is_a?(Article) ? commentable : commentable.article
  end
  
#  def phcfm
#    return @phcfm if defined?(@phcfm)
#    @phcfm = commentable.is_a?(Phcfm) ? commentable : commentable.phcfm
#  end
  
  #shorter that above code
#  def phcfm
#    commentable.is_a?(Phcfm) ? commentable : commentable.phcfm
#  end
  
end
