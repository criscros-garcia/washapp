class UsersController < ApplicationController
  def profile
    @user = current_user
    @requests = current_user.requests.all
  end
end
