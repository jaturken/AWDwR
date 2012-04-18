# encoding: utf-8

# PRODUCTS
Product.delete_all
Product.create(:title => 'Web Design for Developers',
  :description => 
    %{<p>
        <em>Web Design for Developers</em> will show you how to make your
        web-based application look professionally designed. We'll help you
        learn how to pick the right colors and fonts, avoid costly interface
        and accessibility mistakes -- your application will really come alive.
        We'll also walk you through some common Photoshop and CSS techniques
        and work through a web site redesign, taking a new design from concept
        all the way to implementation.
      </p>},
  :image_url =>   '/assets/wd4d.jpg',    
  :price => 42.95)
# . . .
Product.create(:title => 'Programming Ruby 1.9',
  :description =>
    %{<p>
        Ruby is the fastest growing and most exciting dynamic language
        out there. If you need to get working programs delivered fast,
        you should add Ruby to your toolbox.
      </p>},
  :image_url => '/assets/ruby.jpg',
  :price => 49.50)
# . . .

Product.create(:title => 'Rails Test Prescriptions',
  :description => 
    %{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      </p>},
  :image_url => '/assets/rtp.jpg',
  :price => 43.75)

#PAYMENT_TYPES
PaymentType.delete_all
PaymentType.create(:name => "Check")
PaymentType.create(:name => "Credit card")
PaymentType.create(:name => "Purchase order")

#USERS
User.delete_all
User.create(  name: "Alex Teut", 
              email: "jaturken@gmail.com",
              password: "jaturken",
              password_confirmation: "jaturken",
              role: "admin")

User.create(  name: "User", 
              email: "user@gmail.com",
              password: "useruser",
              password_confirmation: "useruser")
