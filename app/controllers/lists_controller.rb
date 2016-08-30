class ListsController < ApplicationController
  before_action :bucket
  before_action :list, except: [:index, :new, :create]

  def index
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list[:bucket_id] = params[:bucket_id]
    if @list.save
      redirect_to bucket_list_path(@bucket, @list)
    else
      render :new
    end
  end

  def edit
  end

  def update

  end

  def destroy

  end

  private

  def list_params
    params.require(:list).permit(:name, :notes, :bucket_id)
  end

  def list
    @list = List.find(params[:id])
  end

  def bucket
    @bucket = Bucket.find(params[:bucket_id])
  end
end
