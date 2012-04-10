class PaymentType < ActiveRecord::Base
  has_many :orders

  def self.names
    all.collect { |pay_type| pay_type.name }
  end

end
