class TweetsController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  before_action :set_tweet, only: [:show]
  
  def index
    @tweets = Tweet.includes(:user).order("created_at DESC")
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  end
  
  def edit
  end

  def update

  end


  private

  def tweet_params
    params.require(:tweet).permit(:image, :text, :brand_id, :camera_id, :sensor_id, :resolution_id, :price).merge(user_id: current_user.id)
  end

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end
end