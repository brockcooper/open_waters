class FishingReportsController < ApplicationController
  def show
    @fishing_report = FishingReport.find(params[:id])
    @fish = @fishing_report.fish.all
    @flies = @fishing_report.flies.all
    @hatches = @fishing_report.hatches.all
  end
end