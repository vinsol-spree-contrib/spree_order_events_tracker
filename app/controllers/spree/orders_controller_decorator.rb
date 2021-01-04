module Spree::OrdersControllerDecorator
  def self.prepended(base)
    base.include Spree::OrderEventTrackable
  end
end

::Spree::OrdersController.prepend(Spree::OrdersControllerDecorator)