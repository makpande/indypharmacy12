class Topic < ActiveRecord::Base
  has_many :posts
  mount_uploader :topicimage, TopicImageUploader

  def to_s
    title
  end
end
