class NotificationsController < ApplicationController

  skip_before_action :verify_authenticity_token, only: [:create]

  def create
    ApiCaller.perform_async()
    # SendTextWhenPlatformReadyJob.perform_later
    redirect_to root_path
  end

end
