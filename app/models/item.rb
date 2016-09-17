class Item < ApplicationRecord
  validates_presence_of :name, :description, :price
  validates :name, length: { in: 2..20 }
  validates :description, length: { maximum: 140 }
end
