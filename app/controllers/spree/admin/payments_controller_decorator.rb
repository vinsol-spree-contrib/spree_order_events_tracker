module Spree::Admin::PaymentsControllerDecorator
  def self.prepended(base)
    base.include Spree::OrderEventTrackable
  end
end

::Spree::Admin::PaymentsController.prepend(Spree::Admin::PaymentsControllerDecorator)