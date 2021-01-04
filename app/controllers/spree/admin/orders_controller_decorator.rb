module Spree::Admin::OrdersControllerDecorator
  def self.prepended(base)
    base.include Spree::OrderEventTrackable
  end
end

::Spree::Admin::OrdersController.prepend(Spree::Admin::OrdersControllerDecorator)