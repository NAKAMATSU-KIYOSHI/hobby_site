class HomeController < ApplicationController
  def index
    @user = current_user
  end

  def plamo
    @user = current_user
    @Items = Item.where(category_name: "plamo")
  end

  def toy
    @user = current_user
  end

  def train_model
    @user = current_user
  end

  def model_gun
    @user = current_user
  end

  def other
    @user = current_user
  end

end
