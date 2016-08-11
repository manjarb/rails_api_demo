class Api::V1::UsersController < ApplicationController

  respond_to :json

  def show

    # @user = User.find(params[:id])
    #
    # render json: @user.to_json

    # respond_to do |format|
    #   format.json { render json: User.find(params[:id]).to_json }
    # end

    respond_with User.find(params[:id])

  end

end
