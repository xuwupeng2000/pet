class HtmlParsingService

  # Parse html content
  def parse(resp, url)
    page_object = Page.new(url: url, status_code: resp.code)
    page_object.save

    html = Nokogiri::HTML(resp.body)

    # You can see this is extendable, but for a test I just leave it that way
    interested_tags = %w(h1 h2 h3 a)

    interested_tags.each do |target|

      element = html.css(target)

      element.each do |content|
        tag = Tag.new(page: page_object, tag_type: target, tag_content: content)
        tag.save # Best effort deliver, do not rollback in case of broken tag
      end

    end

    page_object.save
    page_object
  end
end

