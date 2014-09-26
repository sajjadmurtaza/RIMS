class LogoutController < ApplicationController

  def index
    session.clear
    redirect_to default_index_path
  end

end
