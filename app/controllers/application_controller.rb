class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper #si genera l helper automaticamente quando si genera il session controller

end
