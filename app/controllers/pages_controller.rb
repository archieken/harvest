class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :about]

  def home
    @recipes = Recipe.all.first(5)
    @farmers = Producer.where(speciality: "farmer").first(5)
    @butchers = Producer.where(speciality: "butcher").first(3)
    @fishermen = Producer.where(speciality: "fishermen").first(4)
    @dairys = Producer.where(speciality: "dairy").first(5)
    @bakers = Producer.where(speciality: "baker").first(3)
    @winemakers = Producer.where(speciality: "winemaker").first(5)
    @cooks = Producer.where(speciality: "cook").first(5)
    @deli_creatives = Producer.where(speciality: "deli").first(5)
  end

  def about
  end
end


