class Admin::SectionsController < Admin::DashboardController
  crudify :section

  def create
    @section = Section.new(params[:section])
    if @section.save
      flash[:notice] = "Section created"
      redirect_to admin_sections_path
    else
      render 'new'
    end
  end
end
