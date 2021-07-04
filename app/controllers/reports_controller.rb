class ReportsController < ApplicationController
  def index
    reports = Report.all
    render json: reports.as_json
  end

  def create
    user = Report.new(
      user_id: current_user.id
      date: params[Time.now], #gonna need date.day
      good_day_bad_day: params[:good_day_bad_day],
      safety: params[:safety],
      sustain: params[:sustain],
      shine: params[:shine],
      sort: params[:sort],
      set_in_order: params[:set_in_order],
      standardize: params[:standardize],
      misc: params[:misc],
      worked: params[:worked],
      printed: params[:printed],
      cut: params[:cut],
      version: params[:version],
    )
    report.save
    render json: report.as_json
  end
end
