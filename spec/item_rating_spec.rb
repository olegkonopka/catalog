require 'spec_helper'

describe ItemRating do
  before do
    ItemRating.destroy_all
  end

  let(:item_rating1){create :item_rating1}
  let(:item_rating2){create :item_rating2}

  it "does be valid" do
    first_item_rating = build :item_rating1
    expect(first_item_rating.save).to eq(true)
  end

  it "does not be valid" do
    second_item_rating = build :item_rating2
    expect(second_item_rating.save).to eq(false)
  end
end