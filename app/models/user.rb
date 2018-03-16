class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :orders
         has_many :products, through: :orders
         has_one :contact

  def after_sign_in_path_for(resource)
    products_path
  end
end
