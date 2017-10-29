class HistoriesController < ApplicationController
  def index
    @histories = History.all
  end

  def show
  end
end
