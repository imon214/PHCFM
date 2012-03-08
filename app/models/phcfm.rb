class Phcfm < ActiveRecord::Base
#  def editable_by?(user)
#    user && (user == self.user || self.editors.include?(user))
#  end
# has_attached_file :file

  #has_many :comments, :as => :commentable #, :dependent => :destroy, :class_name => 'Comment',
#    :primary_key => 'id',
#    :foreign_key => 'phcfm_id'
  
  extend FriendlyId
  friendly_id :title, :use => [:slugged, :history]
  
  validates :title, :presence => true
  validates :body, :presence => true
  validates :author, :presence => true

end
