class ContactsController < ApplicationController

  def create
    @contact = Contact.new
    @contact.email = params[:email]
    @contact.name = params[:name]
    @contact.subject = params[:subject]
    @contact.content = params[:content]

    if @contact.save
      #send Email
      UserMailer.contact_us_email(@contact).deliver
    else
      flash.now[:alert] = "There is an error"
    end
  end
end
