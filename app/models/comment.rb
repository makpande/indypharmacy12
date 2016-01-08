class Comment < ActiveRecord::Base
  belongs_to :post

  validates :post, presence: true
  has_ancestry

  def self.upvote(id)
    comment = find(id)
    comment.update_attributes(rank: comment.rank.to_i + 1)
  end
end
