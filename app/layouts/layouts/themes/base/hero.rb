class Layouts::Themes::Base::Hero < Layout
  def preview
    tag.div(class: "lp-hero") do
      ph("lp-ph--title lp-mx-auto") +
      ph("lp-ph--subtitle lp-mx-auto lp-mt-xs") +
      ph("lp-ph--btn lp-mx-auto lp-mt-sm")
    end
  end

  def form
  end

  def persisted
    tag.section(class: "creative-hero--section") do
      tag.div(class: "bg bg-image", style: "background-image: url('#{asset_path}');") +
      tag.div(class: "bg-overlay") +
      tag.div(class: "auto-container") do
        tag.div(class: "content-box") do
          element_text("span", "subtitle") +
          element_text("h1", "title") +
          element_text("div", "body") +
          tag.div(class: "btn-box") do
            element_text("a", "cta")
          end
        end
      end
    end
  end

  def element_text(tag_type, placement)
    (text = @section.elements.find_by(placement:)&.text) ?
      tag.send(tag_type, text, class: "hero-#{placement}") :
      "".html_safe
  end
end
