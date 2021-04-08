10.times do |n|
  post = Post.create!(content: "記事")
  5.times do |m|
    Comment.create!(comment: "コメント", post: post)
  end
end
