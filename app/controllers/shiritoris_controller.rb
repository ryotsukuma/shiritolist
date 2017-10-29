class ShiritorisController < ApplicationController
  def index
    @history = current_history
    @shiritori = current_history.shiritoris.build  # form_for 用
    @shiritoris = current_history.shiritoris.order('created_at DESC').page(params[:page])
    if current_history.shiritoris.last != nil
      @last_char = current_history.shiritoris.last.word
    end
    counts(@history)
  end

  def create
    @shiritori = current_history.shiritoris.build(shiritori_params)
    if current_history.shiritoris.last != nil
      @last_char = current_history.shiritoris.last.word
    end
    
    
    if @shiritori.word[@shiritori.word.length-1,1] == 'ん'
        flash[:danger] = 'しりとりを終了します'
        current_history.shiritori_fin
        redirect_back(fallback_location: root_path)
 
    elsif current_history.shiritoris.first != nil and (@last_char[@last_char.length-1,1] != @shiritori.word[0])
        flash[:danger] = 'しりとりになっていません'
        redirect_back(fallback_location: root_path)
    else
    
      if @shiritori.save
        flash[:success] = '投稿しました。'
        redirect_to root_url
      else
        flash[:danger] = '投稿に失敗しました。'
        redirect_back(fallback_location: root_path)
        #render :index
      end
    end
  end
  
  
  def shiritori_params
    params.require(:shiritori).permit(:word, :name)
  end
  
end
