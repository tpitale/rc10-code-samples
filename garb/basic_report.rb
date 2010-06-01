class Exits
  extend Garb::Resource

  metrics :exits, :visits
  dimensions :page_path
end