class SelectionController < ApplicationController
  def index
    @topic = Topic.all
    @subtopic = Subtopic.all
    @countries = Country.all
    @indicators = Indicator.all
  end
end
