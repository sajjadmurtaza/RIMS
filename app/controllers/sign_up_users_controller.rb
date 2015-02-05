class SignUpUsersController < ApplicationController
  def index
    @users=User.all
  end
end
