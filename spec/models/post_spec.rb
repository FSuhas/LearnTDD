require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'comment association' do
    it 'should imcrement comments count' do
      post = Post.new(name: 'Salut')
      post.comments << Comment.new(content: 'Démonstration')
      post.save
      expect(Comment.count).to eq(1)
      expect(post.comments.count).to eq(1)
    end
  end
  it 'should persist a post' do
    Post.create(name: 'Hello Wolrd')
    expect(Post.count).to eq(1)
  end
end
