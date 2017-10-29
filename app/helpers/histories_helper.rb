module HistoriesHelper
  def current_history
    if History.last == nil
        History.create(finflg:false)
    end
    @current_history = History.last
  end
end
