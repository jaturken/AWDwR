require 'spec_helper'

describe Product do
	it 'must have nonempty attributes' do
    product = Product.new
		product.valid?.should == false
    product.errors[:title].should_not == nil
    product.errors[:description].should_not == nil
    product.errors[:price].should_not == nil
    product.errors[:image_url].should_not == nil
	end

	it 'must have positive price' do
    product = Product.new(title:       "My Book Title",
                          description: "yyy",
                          image_url:   "zzz.jpg")
    product.price = -1
		product.valid?.should == false
    product.errors[:price].join('; ').should == "must be greater than or equal to 0.01"

    product.price = 0
		product.valid?.should == false
    product.errors[:price].join('; ').should == "must be greater than or equal to 0.01"

    product.price = 1
		product.valid?.should == true
	end

# method just to test image_url validetion
  def new_product(image_url) 
    Product.new(title:       "My Book Title",
                description: "yyy",
                price:       1,
                image_url:   image_url)
  end

	it 'should have valid image urls' do
    ok = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg http://a.b.c/x/y/z/fred.gif }
    bad = %w{ fred.doc fred.gif/more fred.gif.more }
    
    ok.each do |name|
      new_product(name).valid?.should == true
    end

    bad.each do |name|
      new_product(name).valid?.should == false
    end
	end

	it 'is not valid without a unique title' do
    product = Product.new(title:       "My Book Title",
                          description: "yyy", 
                          price:       1, 
                          image_url:   "fred.gif")
    product.save.should == true
    #Now create a new product with the same title
    product = Product.new(title:       "My Book Title",
                          description: "zzz", 
                          price:       1, 
                          image_url:   "fred.gif")
    product.save.should == false
    product.errors[:title].join('; ').should == "has already been taken"
	end

	it 'is not valid without a unique title - i18n' do
    product = Product.new(title:       "My Book Title",
                          description: "yyy", 
                          price:       1, 
                          image_url:   "fred.gif")
    product.save.should == true

    product = Product.new(title:       "My Book Title",
                          description: "zzz", 
                          price:       1, 
                          image_url:   "fred.gif")
    #Now trying to save it again
    product.save.should == false
    product.errors[:title].join('; ').should == I18n.translate('activerecord.errors.messages.taken')
	end

end
