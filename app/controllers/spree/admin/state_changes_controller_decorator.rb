module Spree::Admin::StateChangesControllerDecorator
  def self.prepended(base)
    base.include Spree::OrderEventTrackable
  end
end

::Spree::Admin::StateChangesController.prepend(Spree::Admin::StateChangesControllerDecorator)