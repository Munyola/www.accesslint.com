xml.instruct!
xml.feed "xmlns" => "http://www.w3.org/2005/Atom" do
  xml.title "AccessLint Blog"
  xml.id URI.join(ENV.fetch("URL"), blog.options.prefix.to_s)
  xml.link "href" => URI.join(ENV.fetch("URL"), blog.options.prefix.to_s)
  xml.link "href" => URI.join(ENV.fetch("URL"), current_page.path), "rel" => "self"
  xml.updated(blog.articles.first.date.to_time.iso8601) unless blog.articles.empty?
  xml.author { xml.name "AccessLint" }

  blog.articles.each do |article|
    xml.entry do
      xml.title article.title
      xml.link "rel" => "alternate", "href" => URI.join(ENV.fetch("URL"), article.url)
      xml.id URI.join(ENV.fetch("URL"), article.url)
      xml.published article.date.to_time.iso8601
      xml.updated File.mtime(article.source_file).iso8601
      xml.author { xml.name "AccessLint" }
      xml.content article.body, "type" => "html"
    end
  end
end
