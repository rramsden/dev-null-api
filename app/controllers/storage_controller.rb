class StorageController < ActionController::Base
  def index
    render json: Storage.all, root: false
  end

  def show
    storage = Storage.find(params[:id])

    if storage
      render json: storage
    else
      render json: {message: "Record not found"}, status: 404
    end
  end

  def create
    storage = Storage.new(key: params[:key], value: params[:value])

    if storage.save
      render json: storage
    else
      render json: {message: "Record invalid"}, status: 422
    end
  end

  def destroy
    storage = Storage.find(params[:id])

    if storage
      render json: storage
    else
      render json: {message: "Record not found"}, status: 404
    end
  end
end
