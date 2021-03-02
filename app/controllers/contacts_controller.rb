class ContactsController < ApplicationController
  def new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      render plain: "Contact was successfully saved!"
    else
      render 'new'
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:email, :message)
  end
end
