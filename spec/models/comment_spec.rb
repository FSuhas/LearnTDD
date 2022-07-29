require 'rails_helper'

RSpec.describe Comment, type: :model do
  context 'validation' do
    it 'should validate presence of content' do
      comment = Comment.new(content: 'aze')
      comment.validate
      expect(comment.errors.messages).to include(:content)
      expect(comment.valid?).to be(false)
    end
  end
end
