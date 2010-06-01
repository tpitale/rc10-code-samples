metric "Activation 1" do
  description "Measure page views for /users/new"

  def values(from, to)
    report = Garb::Report.new(ACTIVE_PROFILE, {:start_date => from, :end_date => to})
    report.metrics :pageviews
    report.dimensions :page_path, :date
    report.sort :date
    report.filters do
      eql :page_path, '/'
    end

    # hack because data isn't returned if it's 0
    data = report.results.inject({}) do |hash, result|
      hash.merge(result.date => result.pageviews.to_i)
    end

    (from..to).map do |day|
      key = day.strftime('%Y%m%d')
      data[key] || 0
    end
  end
end
