class Api::V1::PagesController < ActionController::Base
  rescue_from Errno::ECONNREFUSED, with: :invalid_request

  api :GET, '/pages', 'Get all saved pages with tags, ordered by created_at desc'
  def index
    @pages = Page.includes(:tags).all.order(created_at: :desc)
  end

  api :POST, '/pages', 'Post url and get all the targeted tags saved to database (targeted tags: h1 h2 h3 a)'
  param :url, String, desc: 'Url you want to look up for', required: true
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
