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
end