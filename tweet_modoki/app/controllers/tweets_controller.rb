class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.save
    redirect_to "/tweets/"
  end

  private
    def tweet_params
     params.require(:tweet).permit(
       :tweet
    )
    end
end
