Spree::OrdersController.class_eval do
  include Spree::OrderEventTrackable
end
