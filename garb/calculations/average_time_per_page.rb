class PageviewExitsAndTime
  extend Garb::Resource

  metrics :pageviews, :exits, :time_on_page
  dimensions :page_path
end

results = PageviewExitsAndTime.results(profile)

results.each do |result|
  pageviews_without_exits = result.pageviews.to_i - result.exits.to_i
  next unless pageviews_without_exits > 0

  average_time = (result.time_on_page.to_i / (pageviews_without_exits).to_i)
  puts "Average Time/Page for #{result.page_path} in seconds: #{average_time}"
end