class BoardUsersController < ApplicationController
  before_action :set_board_user, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_account!

  # GET /board_users
  # GET /board_users.json
  def index
    users = BoardUser.where 'account_id == ?', current_account.id
    if users[0] == nil then
      user = BoardUser.new
      user.account_id = current_account.id
      # nicknameはpresence trueのため、初期値を入れておく。
      user.nickname = '<<no name>>'
      user.save
      users = BoardUser.where 'account_id == ?', current_account.id
      # whereで検索すると、結果が何個であろうが、配列で返ってくる
      # 単なる配列ではなく、ActiveRecord::Relation
      # なので、検索結果はusers[0]で取り出してから代入しないとだめ。
    end
    @board_user = users[0]
  end

  # GET /board_users/1
  # GET /board_users/1.json
  def show
    @board_user = BoardUser.find(params[:id])
  end

  # GET /board_users/new
  def new
    # new.html.erbが表示されるが、
    # _error.html.erbを作ってそれを表示させるようにした。
  end

  # GET /board_users/1/edit
  def edit
  end

  # POST /board_users
  # POST /board_users.json
  def create
  end

  # PATCH/PUT /board_users/1
  # PATCH/PUT /board_users/1.json
  def update
    respond_to do |format|
      if @board_user.update(board_user_params)
        format.html { redirect_to '/board_messages', notice: 'Board user was successfully updated.' }
        format.json { render :show, status: :ok, location: @board_user }
      else
        format.html { render :index }
        format.json { render json: @board_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /board_users/1
  # DELETE /board_users/1.json
  def destroy
    redirect_to '/board_messages'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_board_user
      @board_user = BoardUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def board_user_params
      params.require(:board_user).permit(:nickname, :account_id, :introduce)
    end
end
