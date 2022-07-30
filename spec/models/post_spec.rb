require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'comment association' do
    it 'should imcrement comments count' do
      post = build(:post)
      post.comments << build(:comment)
      post.save
      expect(Comment.count).to eq(1)
      expect(post.comments.count).to eq(1)
    end
  end
  it 'should persist a post' do
    create(:post)
    expect(Post.count).to eq(1)
  end
end
