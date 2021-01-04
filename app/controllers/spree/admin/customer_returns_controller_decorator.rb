module Spree::Admin::CustomerReturnsControllerDecorator
  def self.prepended(base)
    base.include Spree::OrderEventTrackable
  end
end

::Spree::Admin::CustomerReturnsController.prepend(Spree::Admin::CustomerReturnsControllerDecorator)