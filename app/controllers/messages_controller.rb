class MessagesController < ApplicationController
  def create
    @message = Message.new(params[:message])
    unless params[:image_url].empty?
      begin
        @message.image = URI.parse(params[:image_url])
      rescue URI::InvalidURIError
        flash[:notice] = "Invalid URI for image :("
      end
    end
    if @message.save
      flash[:notice] = "Message created"
      redirect_to "/#{@message.topic.section.slug}/topics/#{@message.topic.id}"
    else
      render template: 'messages/new'
    end
  end

  def show
  end
end
