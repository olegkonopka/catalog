require 'spec_helper'

describe Item do
  before do
    Item.destroy_all
  end

  let(:item1){ create :item1 }
  let(:item2){ create :item2 }

  it "does be valid" do
    first_item = build :item1
    expect(first_item.save).to eq(true)
  end

  it "does not be valid" do
    second_item = build :item2
    expect(second_item.save).to eq(false)
  end

  it "does works when query passed in" do
    item = attributes_for(:item1)
    search_result = Item.text_search(item[:name])
    expect(search_result).to_not eq(nil)
  end

  it "doesn't works when query isn't passed in" do
    search_result = Item.text_search(nil)
    expect(search_result).to eq([])
  end
end