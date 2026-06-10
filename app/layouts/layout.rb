class Layout
  include ActionView::Helpers
  include SectionLayoutsHelper

  def initialize(section)
    @layout = section.layout
    @section = section
  end

  def preview
    "Preview not implemented for layout '#{@layout}'".html_safe
  end

  def form
    tag.div(class: "lp-cols lp-cols--2") do
      "Form not implemented for layout '#{@layout}'".html_safe
    end
  end

  def persisted
    Layouts::Themes::Base.const_get(@layout.camelize).new(@section).persisted
  end

  private

  def asset_path(file_name = "tente.png")
    ActionController::Base.helpers.asset_path(file_name)
  end
end
