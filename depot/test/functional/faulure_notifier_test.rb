require 'test_helper'

class FaulureNotifierTest < ActionMailer::TestCase
  test "error_occured" do
    mail = FaulureNotifier.error_occured
    assert_equal "Error occured", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
