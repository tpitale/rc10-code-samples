metric "Signups Welcomed" do
  google_analytics "UA-65432-1"

  # report is an instance of Garb::Report.new(profile)
  report.metrics :pageviews
  report.dimensions :page_path
  report.filters do
    eql(:page_path, 'welcome')
  end
end