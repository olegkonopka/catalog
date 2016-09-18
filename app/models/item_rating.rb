class ItemRating
  include Mongoid::Document
  field :rating, type: Integer
  field :item_id, type: Integer

  validates_presence_of :rating, :item_id
  validates :rating, inclusion: { in: 1..5 }
end
