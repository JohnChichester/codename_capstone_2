class QuestionsController < ApplicationController
  def index
    questions = Question.all.where(version: 1)
    render json: questions.as_json
  end

  def create
    user = Question.new(
      version: params[:version],
      catagory: params[:catagory],
      question_text: params[:question_text],
    )
    if user.save
      render json: { message: "Question created successfully" }, status: :created
    else
      render json: { errors: question.errors.full_messages }, status: :bad_request
    end
  end

  def show
    questions = Question.all.where(version: params[:version])
    render json: questions
  end
end
