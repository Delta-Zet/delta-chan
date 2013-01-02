class TopicsController < ApplicationController

  def create
    @topic = Topic.new(params[:topic])
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
  end
end
