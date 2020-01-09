class HomeController < ApplicationController
  def index
    @user = current_user
  end

  def plamo
    @user = current_user
    @items = Item.where(category_name: "plamo")
    @item = Item.find(params[:id])

  end

  def plamo_details
    @user = current_user
    @items = Item.where(category_name: "plamo")
    @item = Item.find(params[:id])
  end

  def toy
    @user = current_user
    @items = Item.where(category_name: "toy")
    @item = Item.find(params[:id])
  end

  def toy_details
    @user = current_user
    @items = Item.where(category_name: "toy")
    @item = Item.find(params[:id])
  end

  def train_model
    @user = current_user
    @items = Item.where(category_name: "train_model")
    @item = Item.find(params[:id])
  end

  def train_model_details
    @user = current_user
    @items = Item.where(category_name: "train_model")
    @item = Item.find(params[:id])
  end

  def model_gun
    @user = current_user
    @items = Item.where(category_name: "model_gun")
    @item = Item.find(params[:id])
  end

  def model_gun_details
    @user = current_user
    @items = Item.where(category_name: "model_gun")
    @item = Item.find(params[:id])
  end

  def other
    @user = current_user
    @items = Item.where(category_name: "other")
    @item = Item.find(params[:id])
  end

  def other_details
    @user = current_user
    @items = Item.where(category_name: "other")
    @item = Item.find(params[:id])
  end


end
