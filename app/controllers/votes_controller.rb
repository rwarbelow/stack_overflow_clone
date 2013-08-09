class VotesController < ApplicationController
  def create
    if params[:commit] == "Vote up"
      current_user.votes.create(params[:vote])
    else
      current_user.votes.create(params[:vote])
    end
  end
end
