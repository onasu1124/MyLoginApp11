class LoginController < ApplicationController
  def index
    @name = ""
    @password = ""
  end

  def user
    @user = User.find_by(name: params[:name], password: params[:password])
    if @user
      redirect_to("https://google.com")
    else
      flash[:notice] = "ユーザー名またはパスワードが不正です"
      @name = params[:name]
      @password = params[:password]
      render("/login/index")
    end
  end
end
