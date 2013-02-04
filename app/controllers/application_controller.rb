class ApplicationController < ActionController::Base

  helper Spree::AnalyticsHelper

  protect_from_forgery

end
