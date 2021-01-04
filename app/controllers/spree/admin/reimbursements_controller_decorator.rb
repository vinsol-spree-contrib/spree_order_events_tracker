module Spree::Admin::ReimbursementsControllerDecorator
  def self.prepended(base)
    base.include Spree::OrderEventTrackable
  end
end

::Spree::Admin::ReimbursementsController.prepend(Spree::Admin::ReimbursementsControllerDecorator)