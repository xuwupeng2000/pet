class Api::V1::PagesController < ActionController::Base
  rescue_from Errno::ECONNREFUSED, with: :invalid_request

  def index
    @pages = Page.includes(:tags).all
  end

  def create
    url  = url_params
    resp = HttpRequestService.new.get(url)
    @page = HtmlParsingService.new.parse(resp, url)

    render :show
  end

  private

  def invalid_request
    head 400
  end


  def url_params
    params.require(:url)
  end
end
