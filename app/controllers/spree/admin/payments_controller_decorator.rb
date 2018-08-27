Spree::Admin::PaymentsController.class_eval do
  include Spree::OrderEventTrackable
end
