class ApplicationController < ActionController::Base
  protect_from_forgery
  #Mis modificaciones
  include SessionsHelper
end
