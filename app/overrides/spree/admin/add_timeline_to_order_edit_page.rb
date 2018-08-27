Deface::Override.new(
  virtual_path: 'spree/admin/shared/_order_tabs',
  name: 'add_timeline_to_order_edit_page',
  insert_bottom: "ul[data-hook='admin_order_tabs']",
  text: "<li<%== 'class=active' if current == :timeline %> data-hook='admin_order_tabs_timeline'>
        <%= link_to_with_icon 'transfer', Spree.t(:timeline), admin_order_order_events_tracker_index_path(@order) %>
      </li>"
)
