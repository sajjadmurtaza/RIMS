class CheckloginController < ApplicationController
  def login
    if params[:username]=='sajjad.murtaza@nxb.com.pk'
      @user = params[:username]
      session[:name] = @user
      session[:usersession] = true
      redirect_to default_index_path
    end

  #  if params[:username]!='sajjad.murtaza@nxb.com.pk'
  #    Customer.all.each do |c|
  #      if c.name == params[:username]
  #        session[:cusname] = c.name
  #        session[:cussession] = true
  #        redirect_to default_index_path
  #      end
  #    end
  #
  #  end
  end
end
