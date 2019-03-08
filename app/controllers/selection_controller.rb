class SelectionController < ApplicationController
  def index
    @topic = Topic.all
    @subtopic = Subtopic.all
    @countries = Country.all
    @indicators = Indicator.all
    @new_request = ""
  end

  def create
    @element = Element.where("country_id = ? AND indicator_id = ?", create_params[:country].to_i, create_params[:indicator].to_i).first
    @element_clear = @element.series.reject { |year, value| value == "-" }
  end

  private

  def create_params
    params.permit(:topic, :country, :subtopic, :indicator)
  end
end
