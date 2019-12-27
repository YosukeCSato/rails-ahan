class AhanController < ApplicationController
  layout 'ahan'

  def index
    @header = 'layout sample'
    @footer = 'フッターです'
    @title = 'あなたが入力したのは！！'
    @text = params[:input1]
    @radio = params[:radio]
    if params[:select]
      @selected = ''
      for val in params[:select]
        @selected += val + ' '
      end
    end
    if params[:check]
      @checked = 'チェックしましたねあはん'
    end
    if request.post? && params[:input1].empty?
      @title = 'ahan/postが呼ばれましたけども入力していませんな'
      @text = '何かを入力してください。'
    end
    
    if request.get?
      @title = 'Requestがgetでahah/indexアクションを呼びました'
      @msg = 'type text...'
    end
  end
  
  def ahan
    if params[:msg] == nil
      render plain: "私の名前は婀半"
    else
      render plain: '一目瞭然言語道断' + params[:msg]
    end
  end

  def uhihi
    redirect_to action: :index, params: { ahan: 'リダイレクトあはん' }
  end

end
