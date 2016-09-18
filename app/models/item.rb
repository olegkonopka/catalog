class Item < ApplicationRecord
  validates_presence_of :name, :description, :price
  validates :name, length: { in: 2..20 }
  validates :description, length: { maximum: 500 }
  validates_numericality_of :price, :greater_than => 0.1

  def self.text_search(query)
    if query.present?
      where("name @@ :q or description @@ :q", q: query)
    else
      all
    end
  end
end
