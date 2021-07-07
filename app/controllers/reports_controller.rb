class ReportsController < ApplicationController
  def index
    page = ""
    if current_user.admin == true
      reports = Report.all
      render json: reports.as_json
      report = Report
    else
      reports = Report.where(user_id: current_user.id)
      render json: report.as_json
    end
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

  # def patch
  #   product = Product.find_by(id: params[:id])
  #   product.name = params[:title] || product.name
  #   product.price = params[:price] || product.price
  #   product.stock = params[:stock] || product.stock
  #   #product.image_url = params[:image_url] || product.image_url
  #   product.description = params[:description] || product.description
  #   if products.save
  #     render json: products
  #   else
  #     render json: { errors: product.errors.full_messages }, status: 422
  #   end
end
