class Api::ItemsController < ApiController
  before_action :authenticated?

  def create
    item = Item.new(user_params)
    if item.save
      render json: item
    else
      render json: { errors: item.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:item).permit(:entry, :priority, :list_id, :user_id)
  end
end