class Product < ActiveRecord::Base
  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item
  
  validates :title, :description, :image_url, presence:true
  validates :price, numericality: { greater_than_or_equal_to: 0.01}
  validates :price, numericality: { less_than_or_equal_to: 999.99}
  validates :title, uniqueness:true, length: {minimum: 10, message: "must be at least 10 characters long"}
  validates :image_url, allow_blank:true, uniqueness: true, format: { 
    with: %r{\.(gif|jpg|png)$}i, 
    message: 'Must be a URL for GIF, JPG or PNG image'
  }
  
  private
  
    #ensure that there are no line items referencing this product
    def ensure_not_referenced_by_any_line_item
      if line_items.empty?
	return true
      else
	error.add(:base, 'Line Items present')
	return false
      end
    end

end
