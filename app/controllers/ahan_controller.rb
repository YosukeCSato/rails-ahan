class AhanController < ApplicationController
  layout 'ahan'

  before_action :authenticate_account!, only: :login_check

  def index
    @header = 'layout sample'
    @footer = 'フッターです'
    @title = 'あはんあはん、言語道断魑魅魍魎！！'
    @msg = 'this is sample page'
  end

  def login_check
    @account = current_account
    @msg = 'you logged in at: ' + @account.current_sign_in_at.to_s
    @count = @account.sign_in_count
    @ip = @account.last_sign_in_ip
    @password = @account.encrypted_password
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
