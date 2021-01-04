module Spree::Admin::RefundsControllerDecorator
  def self.prepended(base)
    base.include Spree::OrderEventTrackable
  end
end

::Spree::Admin::RefundsController.prepend(Spree::Admin::RefundsControllerDecorator)