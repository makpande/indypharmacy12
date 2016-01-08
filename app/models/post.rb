class Post < ActiveRecord::Base
  belongs_to :topic
  has_many :comments

  def to_s
    title
  end
end
