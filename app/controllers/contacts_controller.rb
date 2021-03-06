class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = "Your message has been delivered. I will contact you soon!"
    else
      flash.now[:error] = "Cannot send message."
      render [:new]
    end
  end
end
