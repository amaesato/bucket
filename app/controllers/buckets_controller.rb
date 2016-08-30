class BucketsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :find_bucket, except: [:index, :new, :create]

  def index
    @buckets = Bucket.all
  end

  def show
  end

  def new
    @bucket = Bucket.new
  end

  def create
    @bucket = current_user.buckets.new(bucket_params)
    if @bucket.save
      flash[:success] = "Trip with name: #{@bucket.name} created!"
      redirect_to bucket_path(@bucket)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @bucket.update(bucket_params)
      flash[:success] = "#{@bucket.name} updated!"
      redirect_to bucket_path(@bucket)
    else
      render :edit
    end
  end

  def destroy
    name = @bucket.name
    @bucket.destroy
    flash[:success] = "#{name} destroyed!"
    redirect_to buckets_path
  end

  private

  def bucket_params
    params.require(:bucket).permit(:name, :theme, :complete_by, :user_id)
  end

  def find_bucket
    @bucket = Bucket.find(params[:id])
  end
end
