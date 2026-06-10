class Layout
  include ActionView::Helpers
  include Rails.application.routes.url_helpers
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

  def base_class
    ""
  end

  def element_text(tag_type, placement)
    (text = @section.elements.find_by(placement:)&.text) ?
      tag.send(tag_type, text, class: "#{base_class}-#{placement}") :
      "".html_safe
  end

  def element_background_image(placement = "background-image")
    bg_image = @section.elements.find_by(placement:)&.image
    bg_url = bg_image&.attached? ? rails_blob_path(bg_image.blob, disposition: "inline", only_path: true) : ""

    bg_url.present? ?
      tag.div(class: "bg bg-image", style: "background-image: url('#{bg_url}');") :
      "".html_safe
  end
end
