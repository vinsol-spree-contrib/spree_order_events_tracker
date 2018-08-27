module Spree
  module Admin
    class OrderEventsTrackerController < ResourceController

      before_action :load_order

      def index
        @collection = @order.order_events_trackers
      end

      private
        def load_order
          @order = Spree::Order.find_by_number params[:order_id]
        end
    end
  end
end
