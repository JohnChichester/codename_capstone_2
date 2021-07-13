class JobTagsController < ApplicationController
  def create
    tag = Job_tag.new(
      report_id: params[:report_id],
      question_number: params[:question_number],
      questi: params[:question_text],
    )
    if tag.save
      render json: { message: `Job #{tagged_job} inclyded in report` }, status: :created
    else
      render json: { errors: tag.errors.full_messages }, status: :bad_request
    end
  end
end
