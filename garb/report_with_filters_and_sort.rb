class Exits
  extend Garb::Resource

  metrics :exits
  dimensions :page_path
  sort :exits

  filters :page_path.contains => 'season'
  # OR
  filters do
    contains(:page_path, 'season')
  end
end
