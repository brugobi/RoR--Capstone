class VotesController < ApplicationController
  before_action :authenticate_user!, only: %i[create destroy]

  def create
    if current_user.votes.exists?(article_id: params[:article_id])
      flash[:alert] = 'You have already voted for this article!'
    else
      article_voted = Article.find(params[:article_id])
      current_user.voted_articles << article_voted
      flash[:notice] = 'You voted this article.'
    end
    redirect_back(fallback_location: root_path)
  end

  def destroy
    vote = Vote.find_by(article_id: params[:article_id], user_id: current_user.id)
    if vote
      vote.destroy
      flash[:alert] = 'You dislike a article'
    else
      flash[:alert] = 'You cannot downvote article that you did not like before.!'
    end
    redirect_back(fallback_location: root_path)
  end
end
