module Spree::Admin::ReturnAuthorizationsControllerDecorator
  def self.prepended(base)
    base.include Spree::OrderEventTrackable
  end
end

::Spree::Admin::ReturnAuthorizationsController.prepend(Spree::Admin::ReturnAuthorizationsControllerDecorator)