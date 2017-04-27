class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:create]
  def index
    @job = Job.find(params[:job_id])
    @posts = Post.all
  end

  def new
    @job = Job.find(params[:job_id])
    @post = Post.new
  end

  def edit
    @job = Job.find(params[:job_id])
    @post = Post.find(params[:id])
  end

  def create
    @job = Job.find(params[:job_id])
    @post = Post.new(post_params)
    @post.job = @job
    @post.user = current_user
    if @post.save
      redirect_to job_path(@job)
      flash[:notice] = "回复成功"
    else
      redirect_to job_path(@job)
    end
  end

  def update
    @job = Job.find(params[:job_id])
    @post = Post.find(params[:id])
    if @post.save
      redirect_to job_path(@job)
      flash[:notice] = "修改成功"
    else
      render :new
    end
  end

  def destroy
    @job = Job.find(params[:job_id])
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to job_path(@job)
    flash[:alert] = "删除成功"

  end


  private

  def post_params
    params.require(:post).permit(:content)
  end
end
