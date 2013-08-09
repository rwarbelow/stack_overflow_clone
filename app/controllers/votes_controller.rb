class VotesController < ApplicationController
  def create
    if current_user
      @vote = Vote.allow_vote( params[:vote], current_user.id )
    end
    render partial: 'show', layout: false, locals: {voteable: @vote.voteable, vote: Vote.new }
  end
end
