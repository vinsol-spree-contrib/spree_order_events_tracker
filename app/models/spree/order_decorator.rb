module Spree::OrderDecorator
  def self.prepended(base)
    base.has_many :order_events_trackers
  end
end

::Spree::Order.prepend(Spree::OrderDecorator)