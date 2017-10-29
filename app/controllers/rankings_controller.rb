class RankingsController < ApplicationController
  def word
    @ranking_counts = Shiritori.ranking
    
  end
end
