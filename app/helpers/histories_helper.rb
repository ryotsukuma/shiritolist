module HistoriesHelper
  def current_history
    @current_history = History.last
  end
end
