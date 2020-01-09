class HomeController < ApplicationController
  def index
    @user = current_user
  end

  def plamo
    @user = current_user
    @items = Item.where(category_name: "plamo")
  end

  def toy
    @user = current_user
    @items = Item.where(category_name: "toy")
  end

  def train_model
    @user = current_user
    @items = Item.where(category_name: "train_model")
  end

  def model_gun
    @user = current_user
    @items = Item.where(category_name: "model_gun")
  end

  def other
    @user = current_user
    @items = Item.where(category_name: "other")
  end

end
