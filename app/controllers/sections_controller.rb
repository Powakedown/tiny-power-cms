class SectionsController < ApplicationController
  def new
    authorize Section
    @section = Section.new(section_params)
  end

  private

  def section_params
    params.require(:section).permit(:layout)
  end
end
