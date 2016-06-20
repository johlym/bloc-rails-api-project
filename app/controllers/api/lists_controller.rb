class Api::ListsController < ApiController
  before_action :authenticated?

  def create
    list = List.new(user_params)
    if list.save
      render json: list
    else
      render json: { errors: list.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:list).permit(:user_id, :title)
  end
end