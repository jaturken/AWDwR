require 'test_helper'

class UserStoriesTest < ActionDispatch::IntegrationTest

 test "should mail the admin when error occurs" do
    get "/carts/wibble" 
    assert_response :redirect  # should redirect to...
    assert_template "/"        # ...store index

    mail = ActionMailer::Base.deliveries.last
    assert_equal ["jaturken@gmail.com"], mail.to  ## replace mail id
    assert_equal "from@example.com", mail[:from].value  ## replace contact name/mail id
    assert_equal "Depot App Error Incident", mail.subject
  end
  
end