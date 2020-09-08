class VotesController < ApplicationController
  def create
    @vote = current_user.votes.new(article_id: params[:article_id])

    if @vote.save
      redirect_to articles_path, notice: 'You upvote a article.'
    else
      redirect_to articles_path, alert: 'You cannot like this article.'
    end
  end

  def destroy
    vote = Vote.find_by(id: params[:id], user: current_user, article_id: params[:article_id])
    if like
      like.destroy
      redirect_to articles_path, notice: 'You downvote a post.'
    else
      redirect_to articles_path, alert: 'You cannot downvote post that you did not like before.'
    end
  end
end
