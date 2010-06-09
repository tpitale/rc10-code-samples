results = Exits.results(profile)

results.each do |result|
  next unless result.pageviews.to_i > 0

  # this works because GA doesn't track exit_page_path
  exit_rate = ((result.exits.to_f / result.pageviews.to_f) * 100).to_i
  puts "Exit Rate for #{result.page_path}: #{exit_rate}%"
end
