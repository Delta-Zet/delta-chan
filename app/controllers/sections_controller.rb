class SectionsController < ApplicationController
  def index
  end

  def show
    @section = Section.find_by_slug(params[:id])
  end
end
