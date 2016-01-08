class Post < ActiveRecord::Base
  belongs_to :topic
  has_many :comments
  has_ancestry
  def to_s
    title
  end
end
