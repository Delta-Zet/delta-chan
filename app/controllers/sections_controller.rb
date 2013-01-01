class SectionsController < ApplicationController

  def show
    @section = Section.find_by_slug(params[:id])
    @topic = Topic.new(section_id: @section.id)
    @topics = Topic.all
  end
end
