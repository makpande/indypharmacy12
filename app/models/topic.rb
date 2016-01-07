class Topic < ActiveRecord::Base
  mount_uploader :topicimage, TopicImageUploader

  def to_s
    title
  end
end
