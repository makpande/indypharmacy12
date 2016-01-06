class Topic < ActiveRecord::Base
  mount_uploader :topicimage, TopicImageUploader
end
