class VotesController < ApplicationController
  def create
    if current_user
      Vote.allow_vote( params[:vote], current_user.id )
    end
    redirect_to :back
  end
end
