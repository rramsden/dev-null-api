class StorageController < ActionController::Base
  def index
  end

  def show
    storage = Storage.find(params[:id])

    if storage
      render json: storage
    else
      render json: {message: "wat"}, status: 404
    end
  end

  def create
    storage = Storage.find(params[:id])

    if storage.valid?
      render json: {message: "kthxbai"}
    else
      render json: {message: "wat"}, status: 422
    end
  end

  def update
    storage = Storage.find(params[:id])
    storage.data = params[:data]

    if storage
      render json: storage
    else
      render json: {message: "wat"}, status: 404
    end
  end

  def destroy
    storage = Storage.find(params[:id])

    if storage
      render json: {message: "wat"}
    else
      render json: {message: "wat"}, status: 404
    end
  end
end
