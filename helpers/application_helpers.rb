module ApplicationHelpers
  def page_title
    if content_for?(:title)
      [yield_content(:title), data.site.name].join(" - ")
    else
      [data.site.name, data.site.tagline].join(" - ")
    end
  end

  def svg(name)
    root = Middleman::Application.root
    images_path = config[:images_dir]
    file_path = "#{root}/source/#{images_path}/#{name}.svg"

    return File.read(file_path) if File.exists?(file_path)
    "(SVG not found)"
  end
end
