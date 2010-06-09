def analytics_pusher_meta_tag
  meta_tags = ""
  
  if track_pageview?
    content = Rack::Utils.escape_html(@_pageview_to_track)
    meta_tags << %(<meta name="track-pageview" content="#{content}" />)
  end

  meta_tags.html_safe
end
