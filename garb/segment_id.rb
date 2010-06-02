class Pageviews
  extend Garb::Resource

  set_segment_id 0
  metrics :pageviews, :visits
end
