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
      @check = pc.distance_from([51.509720, -0.105144])
      #output is given in km

        if @check < 40
          redirect_to products_path
          #render json: {success: true}
          #redirect to city
        else
          flash[:check] = 'Sorry we are currently not delivering to your area. Feel free to check our offers anyways.'
          redirect_to root_path

          #redirect_to root_path(invalid_code: true)
        #modal not currently in that city
        end
    else
      #return location not found, popup

    end
  end

end
