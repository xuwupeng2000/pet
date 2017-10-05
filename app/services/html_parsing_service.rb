class HtmlParsingService

  # Parse html content
  def parse(resp)
    page_object = Page.new(url: url, status_code: resp.code)
    html = Nokogiri::HTML(resp.body)

    interested_tags = %w(h1 h2 h3 a)
    interested_tags.each do |target|
      html.css(target)
    end
  end
end

