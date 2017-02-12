class AppsController < ApplicationController
  def index
    @applicants = Applicant.all
  end
end
