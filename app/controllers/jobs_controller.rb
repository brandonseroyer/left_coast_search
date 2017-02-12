class JobsController < ApplicationController
  before_action :set_job, only: [:show, :edit, :update, :destroy]

  # GET /jobs
  def index
    @jobs = Job.all.order(created_at: :desc)
  end

  # GET /jobs/1
  def show
    @job = set_job
    @applicants = @job.applicants
    render :show
  end

  # GET /jobs/new
  def new
    @job = Job.new
    render :new
  end

  # GET /jobs/1/edit
  def edit
    @job = set_job
  end

  # POST /jobs
  def create
    @job = Job.new(job_params)

    if @job.save
      @job.update(job_id: @job.id)
      redirect_to @job, notice: 'Job was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /jobs/1
  def update
    @job = set_job
    if @job.update(job_params)
      redirect_to @job, notice: 'Job was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /jobs/1
  def destroy
    @job = set_job
    @job.destroy
    redirect_to root_path, notice: 'Job was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def job_params
      params.require(:job).permit(:title, :location, :job_type, :description)
    end
end
