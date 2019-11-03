class RequestsController < ApplicationController
  before_action :set_request

  def show; end

  def new
    @request = current_user.requests.new
  end

  def edit; end

  def create
    @request = current_user.requests.new(request_params)

    if @request.save
      redirect_to @request
    else
      render :new
    end
  end

  def update
    if @request.update(request_params)
      redirect_to @request
    else
      render :edit
    end
  end

  def destroy
    @request.destroy
    redirect_to profile_path
  end

  private

  def set_request
    @request = current_user.requests.find(params[:id])
  end

  def request_params
    params.require(:request).permit(:partner, :package)
  end
end
