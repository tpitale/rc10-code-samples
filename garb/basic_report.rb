class Landings
  extend Garb::Resource

  metrics :entrances
  dimensions :landing_page_path

  sort :entrances
end

results = Landings.results(profile)
