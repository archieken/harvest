class PostcodecheckersController < ApplicationController
  skip_after_action :verify_authorized


  skip_before_action :authenticate_user!, only: [:check_address]

  def check_address


    if !params[:address].blank?
      pc = PostCodeChecker.new(address: params[:address])
      if pc.save

        distance_checker(pc)
      end
    else
      flash[:check] = 'Please insert an address.'
      redirect_to root_path
    end
  end

  private

  def distance_checker(pc)


    if pc.latitude && pc.longitude
      @check = pc.distance_from([-28.64201, 153.61194])

      #output is given in km

        if @check < 500
          redirect_to products_path

        else
          flash[:check] = "Hey there! Harvest is working on bringing your favorite local products to your home in #{pc.address} soon. "
          redirect_to root_path
        end
    else
      #return location not found, popup

    end
  end

end
