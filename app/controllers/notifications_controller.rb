class NotificationsController < ApplicationController

  skip_before_action :verify_authenticity_token, only: [:create]

  def index
    
  end

  def create
    ApiCaller.perform_async(params[:mobile], params[:time], params[:station], params[:destination])
    redirect_to notifications_path
  end

end
