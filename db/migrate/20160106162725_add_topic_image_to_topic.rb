class AddTopicImageToTopic < ActiveRecord::Migration
  def change
    add_column :topics, :topicimage, :string
  end
end
