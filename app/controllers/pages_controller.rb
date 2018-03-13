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
      @check = pc.distance_from([-28.644033, 153.603776])
      #output is given in meter
        if @check < 20000
          redirect_to products_path
          #redirect to city
        else
          redirect_to root_path
        #modal not currently in that city
        end
    else
      #return location not found, popup
        redirect_to root_path
    end
  end


  # def postcodechecker_params
  #   params.require(:post_code_checker).permit(:address)
  # end

end


