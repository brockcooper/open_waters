module FormHelper
  def setup_fishing_report(fishing_report)
    3.times { fishing_report.hatches.build }
    3.times { fishing_report.flies.build }
    3.times { fishing_report.fish.build }
    fishing_report
  end
end
