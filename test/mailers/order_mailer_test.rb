# require "test_helper"

# class OrderMailerTest < ActionMailer::TestCase
#   test "received" do
#     mail = OrderMailer.received(orders(:one))
#     assert_equal "Rails Ocho Depot Store Order Confirmation", mail.subject
#     assert_equal [ "customer@example.org" ], mail.to
#     assert_equal [ "depot@example.com" ], mail.from
#     assert_match /1 x The Pragmatic Programmer/, mail.body.encoded
#   end

#   test "shipped" do
#     mail = OrderMailer.shipped(orders(:one))
#     assert_equal "Rails Ocho Depot Store Order Shipped", mail.subject
#     assert_equal [ "customer@example.org" ], mail.to
#     assert_equal [ "depot@example.com" ], mail.from
#     assert_match %r{
#       <td[^>]*>1<\/td>\s*
#       <td>&times;<\/td>\s*
#       <td[^>]*>\s*The\sPragmatic\sProgrammer\s*</td>
#     }x, mail.body.to_s
#   end
# end
