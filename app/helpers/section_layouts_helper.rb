module SectionLayoutsHelper
  # Each method returns an HTML-safe string for the preview content
  # inside a layout-card button (the visual thumbnail + label).

  def layout_preview_hero
    tag.div(class: "lp-hero") do
      ph("lp-ph--title lp-mx-auto") +
      ph("lp-ph--subtitle lp-mx-auto lp-mt-xs") +
      ph("lp-ph--btn lp-mx-auto lp-mt-sm")
    end
  end

  def layout_preview_text_image
    tag.div(class: "lp-cols lp-cols--2") do
      tag.div(class: "lp-col") do
        ph("lp-ph--title") +
        ph("lp-ph--subtitle lp-mt-xs") +
        ph("lp-ph--line lp-mt-sm") +
        ph("lp-ph--line lp-mt-xxs") +
        ph("lp-ph--line lp-mt-xxs", style: "width:70%")
      end +
      tag.div(ph("lp-ph--img"), class: "lp-col")
    end
  end

  def layout_preview_text_image_form(section)
    tag.div(class: "lp-cols lp-cols--2 h-100") do
      tag.div(class: "lp-col h-100") do
        element_form(section:, placement: "title") +
        element_form(section:, placement: "subtitle") +
        element_form(section:, placement: "body")
      end +
      element_form(section:, placement: "image")
    end
  end

  def layout_preview_image_text
    tag.div(class: "lp-cols lp-cols--2") do
      tag.div(ph("lp-ph--img"), class: "lp-col") +
      tag.div(class: "lp-col") do
        ph("lp-ph--title") +
        ph("lp-ph--subtitle lp-mt-xs") +
        ph("lp-ph--line lp-mt-sm") +
        ph("lp-ph--line lp-mt-xxs") +
        ph("lp-ph--line lp-mt-xxs", style: "width:60%")
      end
    end
  end

  def layout_preview_banner
    tag.div(class: "lp-banner") do
      ph("lp-ph--banner")
    end
  end

  def layout_preview_three_cards
    tag.div(class: "lp-cols lp-cols--3") do
      safe_join(3.times.map do
        tag.div(class: "lp-col lp-feature-card") do
          ph("lp-ph--icon lp-mx-auto") +
          ph("lp-ph--title-sm lp-mx-auto lp-mt-xs") +
          ph("lp-ph--line lp-mt-xs") +
          ph("lp-ph--line lp-mt-xxs", style: "width:75%")
        end
      end)
    end
  end

  def layout_preview_quote
    tag.div(class: "lp-quote") do
      ph("lp-ph--quote lp-mx-auto") +
      ph("lp-ph--line lp-mx-auto lp-mt-sm") +
      ph("lp-ph--line lp-mx-auto lp-mt-xxs", style: "width:60%") +
      ph("lp-ph--avatar lp-mx-auto lp-mt-sm")
    end
  end

  def layout_preview_wide_aside
    tag.div(class: "lp-cols lp-cols--wide-narrow") do
      tag.div(class: "lp-col lp-col--wide") do
        ph("lp-ph--title") +
        ph("lp-ph--line lp-mt-sm") +
        ph("lp-ph--line lp-mt-xxs") +
        ph("lp-ph--line lp-mt-xxs", style: "width:80%") +
        ph("lp-ph--line lp-mt-xxs", style: "width:65%")
      end +
      tag.div(class: "lp-col lp-col--narrow") do
        ph("lp-ph--img", style: "height:100%")
      end
    end
  end

  def layout_preview_stats
    tag.div(class: "lp-cols lp-cols--4") do
      safe_join(4.times.map do
        tag.div(class: "lp-col lp-stat") do
          ph("lp-ph--stat-num lp-mx-auto") +
          ph("lp-ph--line lp-mx-auto lp-mt-xxs", style: "width:55%")
        end
      end)
    end
  end

  def layout_preview_grid_2x2
    tag.div(class: "lp-cols lp-cols--2") do
      safe_join(4.times.map do
        tag.div(ph("lp-ph--img lp-ph--img-sm"), class: "lp-col")
      end)
    end
  end

  def layout_preview_faq
    tag.div(class: "lp-faq") do
      ph("lp-ph--title lp-mx-auto lp-mb-sm") +
      safe_join(3.times.map do
        tag.div(class: "lp-faq-row") do
          ph("lp-ph--line", style: "width:70%") + ph("lp-ph--chevron")
        end
      end)
    end
  end

  def layout_preview_video
    tag.div(class: "lp-video-block") do
      ph("lp-ph--video") +
      ph("lp-ph--line lp-mx-auto lp-mt-xs", style: "width:60%")
    end
  end

  def layout_preview_cta_band
    tag.div(class: "lp-cta-band") do
      ph("lp-ph--title lp-mx-auto", style: "background:rgba(255,255,255,.35)") +
      ph("lp-ph--subtitle lp-mx-auto lp-mt-xs", style: "background:rgba(255,255,255,.25)") +
      ph("lp-ph--btn lp-mx-auto lp-mt-sm", style: "background:rgba(255,255,255,.9)")
    end
  end

  private

  # Generates a <div class="lp-ph [classes]"> placeholder element.
  def ph(classes, style: nil, text: nil)
    opts = { class: "lp-ph #{classes}" }
    opts[:style] = style if style
    tag.div(**opts) do
      text
    end
  end
end
