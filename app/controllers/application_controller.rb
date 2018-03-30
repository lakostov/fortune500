class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
  end

  def subscribed_user
    Subscribtion.find_by(user_id: current_user.id) && Subscribtion.find_by(user_id: current_user.id).end_date > DateTime.now.to_date
  end
end
