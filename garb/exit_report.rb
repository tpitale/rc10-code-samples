class Exits
  extend Garb::Resource

  metrics :exits, :pageviews
  dimensions :page_path
end