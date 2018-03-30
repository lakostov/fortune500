class SubscribtionsController < ApplicationController
before_action :logged_in_user, only: [:create, :plans]
  def index
    @plans = Plan.all
  end

  def plans
    @plan = Plan.find(params[:id])
  end

  def create
    @user = current_user
    @plan = Plan.find(params[:id])
    num_months = @plan.duration.to_i
    @expiration_date = subscribed_user && current_user.subsribtion.end_date > DateTime.now.to_date ? current_user.subscribtion.end_date + num_months.months : DateTime.now.to_date + num_months.months
    @subscribtion = Subscribtion.find_or_initialize_by(user_id: @user.id)
    @subscribtion.start_date = DateTime.now.to_date
    @subscribtion.end_date = @expiration_date
    @subscribtion.plan_id = @plan.id

    if @subscribtion.save
    flash[:success] = "You subsribtion was successful!"
    redirect_to @user
    else
    flash[:danger] = "You subsribtion was unsuccessful! Please try again."
    render 'index'
    end

  end
end
