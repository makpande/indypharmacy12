class Post < ActiveRecord::Base
  has_many :comments

  def to_s
    title
  end
end
