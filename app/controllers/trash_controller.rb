class TrashController < ActionController::Base
  def index
    render json: Trash.all
  end

  def show
    render json: {message: TextGame.render(params[:id].to_i)}, status: 200
  end

  def create
    render json: {message: "kthxbai"}, status: 200
  end

  def destroy
    render json: {message: "kthxbai"}, status: 200
  end
end
