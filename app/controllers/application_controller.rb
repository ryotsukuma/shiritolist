class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  include HistoriesHelper
  
  def counts(history)
    @count_shiritoris = history.shiritoris.count
  end
  
end
