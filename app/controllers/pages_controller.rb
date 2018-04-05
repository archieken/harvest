class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about, :create]

  def home
    @recipes = Recipe.all.first(5)
    @farmers = Producer.where(speciality: "farmer").first(10)
    @butchers = Producer.where(speciality: "butcher").first(10)
    @fishermen = Producer.where(speciality: "fishermen").first(10)
    @dairys = Producer.where(speciality: "dairy").first(10)
    @bakers = Producer.where(speciality: "baker").first(10)
    @winemakers = Producer.where(speciality: "winemaker").first(10)
    @cooks = Producer.where(speciality: "cook").first(10)
   # @deli_creatives = Producer.where(speciality: "deli").first(5)
  end

  def about
    @subscription = Subscription.new
    authorize @subscription
  end

  def create_subscription
    @subscription = Subscription.new
    @subscription = Subscription.create(subscription_params)
     if @subscription.save
      flash[:create_subscription] = "Order has been added to your basket."
      about_path
    else
      render :about
    end
    authorize @subscription
  end

  private

  def subscription_params
    params.require(:subscription).permit(:email)
  end

end


