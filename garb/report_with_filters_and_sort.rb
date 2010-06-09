class Landings
  extend Garb::Resource

  metrics :entrances
  dimensions :landing_page_path

  sort :entrances

  filters :landing_page_path.contains => 'blog'
  # OR
  filters do
    contains(:landing_page_path, 'blog')
  end
end
