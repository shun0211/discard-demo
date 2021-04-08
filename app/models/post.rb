class Post < ApplicationRecord
  include Discard::Model
#   default_scope -> { kept }

# Post.all                       # Only kept posts
# Post.with_discarded            # All Posts
# Post.with_discarded.discarded  # Only discarded posts

  has_many :comments
end
