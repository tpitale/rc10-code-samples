class Exits
  extend Garb::Resource

  metrics :exits
  dimensions :page_path
  sort :exits

  filters :page_path.contains => ‘season’
end
