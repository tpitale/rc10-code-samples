results = Bounces.results(profile)

results.each do |result|
  next unless result.entrances.to_i > 0

  # Dimension: landing_page_path works, page_path does not
  bounce_rate = ((result.bounces.to_f / result.entrances.to_f) * 100).to_i
  puts "Bounce Rate for #{result.landing_page_path}: #{bounce_rate}%"
end
