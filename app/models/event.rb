class Event < ActiveRecord::Base
  extend FriendlyId
  friendly_id :news_title, :use => [:slugged, :history]  
end
