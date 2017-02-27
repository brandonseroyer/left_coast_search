class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  def index
    @contacts = Contact.all.order(created_at: :desc)
  end

  def new
    @contact = Contact.new
    render :new
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      redirect_to root_path, notice: 'Your Inquiry was successfully submitted.'
    else
      render :new
    end
  end

  def destroy
    @contact = set_contact
    @contact.destroy
    redirect_to contacts_url
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_contact
    @contact = Contact.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def contact_params
    params.require(:contact).permit(:name, :email, :phone, :message)
  end
end
