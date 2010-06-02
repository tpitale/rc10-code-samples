results = Exits.results(profile)
results.each do |result|
  puts "Exit Rate for #{result.page_path}"
  puts result.exits / result.visits
end
