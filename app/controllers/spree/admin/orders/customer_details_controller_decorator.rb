module Spree::Admin::Orders::CustomerDetailsControllerDecorator
  def self.prepended(base)
    base.include Spree::OrderEventTrackable
  end
end

::Spree::Admin::Orders::CustomerDetailsController.prepend(Spree::Admin::Orders::CustomerDetailsControllerDecorator)