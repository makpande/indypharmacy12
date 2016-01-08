class Topic < ActiveRecord::Base
  has_many :posts
  mount_uploader :topicimage, TopicImageUploader
  
end
