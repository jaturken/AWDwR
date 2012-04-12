require 'test_helper'

class OrderNotifierTest < ActionMailer::TestCase

  setup do
      @order = orders(:one)
  end

  test "received" do
    mail = OrderNotifier.received(@order)
    assert_equal 'Pragmatic Store Order Confirmation', mail.subject
    assert_equal [@order.email], mail.to
    assert_equal ["jaturken@gmail.com"], mail.from
    #TODO: assert_match receiver.text.erb, mail.body.encoded
  end

  test "shipped" do
    mail = OrderNotifier.shipped(@order)
    assert_equal "Shipped", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
