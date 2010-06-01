report = Garb::Report.new(profile, :limit => 20, :offset => 99)

report.metrics :exits
report.dimensions :page_path
report.sort :exits

report.filters :page_path.contains => 'season'
# OR
report.filters do
  contains(:page_path, 'season')
end
