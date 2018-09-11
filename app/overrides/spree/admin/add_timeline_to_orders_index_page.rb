Deface::Override.new(
  virtual_path: 'spree/admin/orders/index',
  name: 'add_timeline_to_orders_index_page',
  insert_top: "td[data-hook='admin_orders_index_row_actions']",
  text: "
        <%= link_to_with_icon 'eye-open', '', admin_order_order_events_tracker_index_path(order), data: { title: Spree.t(:timeline) } , class: 'btn btn-primary btn-sm' %>
      "
)
