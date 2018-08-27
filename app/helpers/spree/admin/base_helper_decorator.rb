Spree::Admin::BaseHelper.class_eval do
  def flash_message(message, action)
    (message.values.join(',').empty?) ? Spree.t(:cart) : message.values.join(',')
  end

  def timeline_image(action)
    (action == 'update') ? 'cd-icon-picture.svg' : 'cd-icon-movie.svg'
  end
end

