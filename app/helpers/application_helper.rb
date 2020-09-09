module ApplicationHelper

  def upvote_or_downvote_btn(article)
    vote = Vote.find_by(article: @articles, user: current_user)
    if vote
      link_to('Downvote', article_vote_path(id: vote.id, article_id: article.id), method: :delete)
    else
      link_to('Upvote', article_votes_path(article_id: article.id), method: :post)
    end
  end
end
