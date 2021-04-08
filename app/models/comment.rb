class Comment < ApplicationRecord
  belongs_to :post

  include Discard::Model
  scope :kept, -> { undiscarded.joins(:post).merge(Post.kept) }

  def kept?
    undiscarded? && post.kept?
  end
end
