class UserMailer < ApplicationMailer
  default from: 'leftcoastalerts@gmail.com'

  def applicant_email(job, applicant)
    @applicant = applicant
    @job = job
    @blaine = 'blainemoberg@leftcoastsearch.com'
    mail(to: @blaine, subject: 'A Job Application Has Been Submitted at leftcoastsearch.com')
  end

  def resume_email(resume)
    @resume = resume
    @blaine = 'blainemoberg@leftcoastsearch.com'
    mail(to: @blaine, subject: 'A Resume Has Been Submitted at leftcoastsearch.com')
  end

  def contact_email(contact)
    @contact = contact
    @blaine = 'blainemoberg@leftcoastsearch.com'
    mail(to: @blaine, subject: 'A Customer Inquiry Has Been Submitted at leftcoastsearch.com')
  end
end
