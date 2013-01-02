class TopicsController < ApplicationController

  def create
    @topic = Topic.new(params[:topic])
    unless params[:image_url].empty?
      @topic.image = URI.parse(params[:image_url])
    end
    if @topic.save
      flash[:notice] = "Topic created"
      redirect_to "/#{@topic.section.slug}"
    else
      @section = @topic.section
      render template: 'sections/show'
    end
  end

  def show
    @topic = Topic.find(params[:id])
    @message = Message.new(topic: @topic)
  end
end
