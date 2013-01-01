class MainController < ApplicationController
  def index
    @topics = Topic.limit(25)
  end
end
