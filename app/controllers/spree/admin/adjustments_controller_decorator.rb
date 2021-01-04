module Spree::Admin::AdjustmentsControllerDecorator
  def self.prepended(base)
    base.include Spree::OrderEventTrackable
  end
end

::Spree::Admin::AdjustmentsController.prepend(Spree::Admin::AdjustmentsControllerDecorator)
