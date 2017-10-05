class ApplicationController < ActionController::Base

  #protect_from_forgery with: :exception # don't need this, this is for page with form, we are doing API
  #before_action :authenticate_jwt_token # Just to show I perfer JWT base authentication

end

