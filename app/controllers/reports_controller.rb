class ReportsController < ApplicationController
  def index
    reports = Report.all
    render json: reports.as_json
  end

  def create
    report = Report.new(
      user_id: current_user.id,
      Date: Time.now, #gonna need date.day
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
    if report.save
      render json: { message: "Report created successfully" }, status: :created
    else
      render json: { errors: report.errors.full_messages }, status: :bad_request
    end
  end
end
