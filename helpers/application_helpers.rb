module ApplicationHelpers
  def github_app_url
    "https://github.com/apps/accesslint"
  end

  def page_title
    site_name = "AccessLint"
    site_tagline = "Automated and continuous web accessibility testing"

    if content_for?(:title)
      [site_name, yield_content(:title)].join(" - ")
    else
      [site_name, site_tagline].join(" - ")
    end
  end

  def support_email
    "support@accesslint.com"
  end

  def svg(name)
    root = Middleman::Application.root
    images_path = config[:images_dir]
    file_path = "#{root}/source/#{images_path}/#{name}.svg"

    return File.read(file_path) if File.exists?(file_path)
    "(SVG not found)"
  end
end
