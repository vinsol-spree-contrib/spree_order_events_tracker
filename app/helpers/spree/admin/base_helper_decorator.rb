Spree::Admin::BaseHelper.class_eval do
  def flash_message(message, action)
    (message.values.join(',').empty?) ? Spree.t(:cart) : message.values.join(',')
  end

  def timeline_image(action)
    (action == 'update') ? 'cd-icon-picture.svg' : 'cd-icon-movie.svg'
  end

  def timeline_container(title, date, image, &block)
    if image =~ /location/
      image_type = "location"
    elsif image =~ /movie/
      image_type = "movie"
    else
      image_type = "picture"
    end
    """
    <div class=\"cd-timeline-block\">
      <div class=\"cd-timeline-img cd-#{image_type}\">
        #{image_tag image}
      </div>
      <div class=\"cd-timeline-content\">
        <h2>#{title}</h2>
        #{capture(&block)}
        <span class=\"cd-date\">#{l(date, format: :short)}</span>
      </div>
    </div>
    """.html_safe
  end
end

