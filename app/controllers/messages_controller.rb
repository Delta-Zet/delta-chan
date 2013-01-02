class MessagesController < ApplicationController
  def create
    @message = Message.new(params[:message])
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
