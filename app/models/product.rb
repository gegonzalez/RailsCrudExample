class Product
  include Mongoid::Document

  field :sku,     type: String
  field :nombre,  type: String
  field :precio,  type: Integer

  validates :sku, :presence => true,
                  :length => { :minimum => 3}
end
