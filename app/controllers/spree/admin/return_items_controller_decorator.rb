module Spree::Admin::ReturnItemsControllerDecorator
  def self.prepended(base)
    base.include Spree::OrderEventTrackable
  end
end

::Spree::Admin::ReturnItemsController.prepend(Spree::Admin::ReturnItemsControllerDecorator)