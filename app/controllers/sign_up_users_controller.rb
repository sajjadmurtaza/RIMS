class SignUpUsersController < ApplicationController
  def index
    @users=User.all
  end

  def customer
    @customers=Customer.all
  end
end
