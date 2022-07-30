FactoryGirl.define do
  factory :comment do
    content 'Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page.'

    factory :comment_empty do
      content ''
    end
  end
end
