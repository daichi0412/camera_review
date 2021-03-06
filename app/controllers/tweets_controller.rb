class TweetsController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  before_action :set_tweet, only: [:index2]

  def index
    @tweets = Tweet.includes(:user).order("created_at DESC")
  end

  def index2
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to tweet_path
    else
      render :new
    end
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
    @tweet = Tweet.find(params[:tweet_id])
  end
end
