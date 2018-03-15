class ContactsController < ApplicationController
  skip_after_action :verify_authorized

  def update
    @contact = Contact.find_by(user_id: current_user.id)
    if @contact.update(contact_params)
      redirect_to orders_path
    else
      render :update
    end
  end

  def check

  end

  private

  def contact_params
    params.require(:contact).permit(:address, :phone)
  end
end
