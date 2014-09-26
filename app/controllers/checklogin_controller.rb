class CheckloginController < ApplicationController
  def login
    if params[:username]=='sajjad.murtaza@nxb.com.pk'
      @user = params[:username]
      session[:name] = @user
      session[:usersession] = true
      redirect_to default_index_path
    elsif
    flash[:error] = 'Ivalid username or password..'
      redirect_to login_path
    end
  end
end
