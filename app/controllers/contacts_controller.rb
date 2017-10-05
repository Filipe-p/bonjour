class ContactsController < ApplicationController
  skip_before_action :authenticate_user!
  def new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to root_path
      # give flash message
    else
      render 'pages/contacts'
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:contact_first_name, :contact_last_name, :contact_email, :contact_telephone, :message)
  end
end
