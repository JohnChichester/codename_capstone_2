class QuestionsController < ApplicationController
  def index
    users = Question.all
    render json: users.as_json
  end

  def create
    user = Question.new(
      version: params[:version],
      catagory: params[:catagory],
      question_text: params[:question_text],
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    report = current_user.reports.where(id: params[:id])
    render json: report
  end
end
