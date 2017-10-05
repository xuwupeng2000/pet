class Api::V1::PagesController < ActionController::Base

  def index
    @pages = Page.include(:tags).all
  end

  def create
    url  = url_params
    resp = HttpRequestService.new.get(url)
    tags = HtmlParsingService.new.parse(resp)
  end

  private

  def url_params
    params.require(:url)
  end
end
