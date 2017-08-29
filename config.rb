activate :aria_current
activate :autoprefixer

set :css_dir, "assets/stylesheets"
set :images_dir, "assets/images"

page "/*.xml", layout: false
page "/*.json", layout: false
page "/*.txt", layout: false

proxy("_redirects", "netlify_redirects", ignore: true)

configure :development do
  activate :livereload do |reload|
    reload.no_swf = true
  end
end

configure :production do
  activate :gzip
  activate :minify_css
  activate :minify_html
  activate :minify_javascript
end
