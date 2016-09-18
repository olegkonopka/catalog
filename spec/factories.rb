require 'factory_girl'

FactoryGirl.define do
  factory :item1, class: Item do
    name "Item"
    description "Lorem Ipsum is simply dummy text of the printing and typesetting industry."
    price "199.00"
  end
  factory :item2, class: Item do
    name "i"
    description "Lorem Ipsum is simply dummy text of the printing and typesetting industry.
    Lorem Ipsum is simply dummy text of the printing and typesetting industry.
    Lorem Ipsum is simply dummy text of the printing and typesetting industry.
    Lorem Ipsum is simply dummy text of the printing and typesetting industry.
    Lorem Ipsum is simply dummy text of the printing and typesetting industry.
    Lorem Ipsum is simply dummy text of the printing and typesetting industry."
    price "0"
  end

  factory :item_rating1, class: ItemRating do
    item_id 1
    rating 3
  end
  factory :item_rating2, class: ItemRating do
    item_id 1
    rating 10
  end
end