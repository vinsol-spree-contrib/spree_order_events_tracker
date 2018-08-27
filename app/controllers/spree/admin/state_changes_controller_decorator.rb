Spree::Admin::StateChangesController.class_eval do
  include Spree::OrderEventTrackable
end
