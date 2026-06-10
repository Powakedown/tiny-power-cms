class Layouts::Themes::Base::Hero < Layout
  LOREM_TITLE    = "Lorem ipsum dolor sit amet".freeze
  LOREM_SUBTITLE = "Consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore.".freeze
  LOREM_BODY     = "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore.".freeze
  LOREM_CTA      = "Commencer".freeze
  BG_PLACEHOLDER = "/rails/active_storage/blobs/placeholder".freeze

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
          tag.span(LOREM_SUBTITLE, class: "hero-subtitle") +
          tag.h1(LOREM_TITLE, class: "hero-title") +
          tag.div(LOREM_BODY, class: "hero-desc") +
          tag.div(class: "btn-box") do
            tag.a(LOREM_CTA, href: "#", class: "hero-cta")
          end
        end
      end
    end
  end
end
