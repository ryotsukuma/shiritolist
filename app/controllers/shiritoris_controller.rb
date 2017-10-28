class ShiritorisController < ApplicationController
  def index
    @history = current_history
    @shiritori = current_history.shiritoris.build  # form_for 用
    @shiritoris = current_history.shiritoris.order('created_at DESC').page(params[:page])
  end

  def create
    @shiritori = current_history.shiritoris.build(shiritori_params)
    
    if @shiritori.save
      flash[:success] = 'メッセージを投稿しました。'
      redirect_to root_url
    else
      flash.now[:danger] = 'メッセージの投稿に失敗しました。'
      render root_url
    end
  end
  
  
  def shiritori_params
    params.require(:shiritori).permit(:word,:name)
  end
  
end
