class ApplicantsController < ApplicationController
  before_action :set_applicant, only: :destroy

  def index
    @applicants = Applicant.all.order(created_at: :desc)
  end

  def new
    @job = Job.find(params[:job_id])
    @applicant = @job.applicants.new
  end

  def create
    @job = Job.find(params[:job_id])
    @applicant = @job.applicants.new(applicant_params)

    if @applicant.save
      redirect_to root_path, notice: 'Your Job Application Was Successfully Submitted.'
    else
      render :new
    end
  end

  def show
    @job = Job.find(params[:job_id])
    @applicant = Applicant.find(params[:id])
  end

  def destroy
    @applicant = Applicant.find(params[:id])
    @applicant.destroy
    redirect_to job_path(@applicant.job), notice: 'Applicant was successfully destroyed.'
  end

  private

    def set_applicant
      @applicant = Applicant.find(params[:id])
    end

    def applicant_params
      params.require(:applicant).permit(:first_name, :last_name, :email, :phone, :about)
    end
end
