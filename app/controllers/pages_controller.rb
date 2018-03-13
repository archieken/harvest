class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    if !params[:address].blank?
      pc = PostCodeChecker.new(address: params[:address])

      if pc.save


        distance_checker(pc)
      end
    end
  end

  private

  def distance_checker(pc)
    if pc.latitude && pc.longitude
      @check = pc.distance_from([51.509720, -0.105144])
      #output is given in km

        if @check < 20
          redirect_to products_path
          #redirect to city
        else

        #modal not currently in that city
        end
    else
      #return location not found, popup

    end
  end


  # def postcodechecker_params
  #   params.require(:post_code_checker).permit(:address)
  # end

end


