class JobsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :create, :destroy]
  before_action :validate_search_key, only: [:search]

  def index
     @q = Job.ransack(params[:q])
     @jobs = @q.result(distinct: true)
  end

  def show
    @job = Job.find(params[:id])
    if @job.is_hidden
      flash[:warning] = "This job already archived."
      redirect_to root_path
    end
    @post = Post.new
  end

  def new
    @job = Job.new
  end

  def edit
    @job = Job.find(params[:id])
  end

  def create
    @job = Job.new(job_params)
    if @job.save
      redirect_to jobs_path
    else
      render :new
    end
  end

  def update
    @job = Job.find(params[:id])
    if @job.update(job_params)
      flash[:notice] = "Update success."
      redirect_to jobs_path
    else
      render :edit
    end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    redirect_to jobs_path
  end

  def search
    if @query_string.present?
      search_result = Job.published.ransack(@search_criteria).result(:distinct => true)
      @jobs = search_result.recent.paginate(:page => params[:page], :per_page => 5 )
    end
  end

  protected

  def validate_search_key
    @query_string = params[:q].gsub(/\\|\'|\/|\?/, "")
    if params[:q].present?
      @search_criteria =  {
        title_or_description_or_city_or_company_or_category_cont: @query_string
      }
    end
  end

  def search_criteria(query_string)
    { :title_or_discription_or_city_cont => query_string }
  end


  private

  def job_params
    params.require(:job).permit(:title, :description, :wage_upper_bound, :wage_lower_bound, :contact_email, :is_hidden, :city, :category, :company)
  end

end
