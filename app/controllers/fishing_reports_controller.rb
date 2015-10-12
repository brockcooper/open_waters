class FishingReportsController < ApplicationController
  def show
    @fishing_report = FishingReport.find(params[:id])
    @fish = @fishing_report.fish.all
    @flies = @fishing_report.flies.all
    @hatches = @fishing_report.hatches.all
  end

  def new
    @fishing_report = current_user.fishing_reports.new
  end

  def create
    @fishing_report = current_user.fishing_reports.build(fishing_report_params)
    if @fishing_report.save
      flash[:success] = "Fishing Report created!"
    end
    redirect_to user_path(current_user)
  end

  private

  def fishing_report_params
    params.require(:fishing_report).permit(:title, :date, :location, :body_of_water, :story, :weather, :air_temp, :water_flow, :visibility, :water_temp, :rod_used, :line_used, :leader_used, :tippet_used, :best_time_of_day, :best_water_type, :advice, :other_notes )
  end
end