class HomeController < ApplicationController
  def index
    @user = current_user
  end

  def plamo
    @user = current_user
    @items = Item.where(category_name: "plamo")

  end

  def plamo_details
    @user = current_user
    @items = Item.where(id: params[:id], category_name: "plamo")
    @posts = Post.where(id: Item)

  end

  def toy
    @user = current_user
    @items = Item.where(category_name: "toy")
  end

  def toy_details
    @user = current_user
    @items = Item.where(id: params[:id],category_name: "toy")
    @posts = Post.where(id: Item)
  end

  def train_model
    @user = current_user
    @items = Item.where(category_name: "train_model")
  end

  def train_model_details
    @user = current_user
    @items = Item.where(id: params[:id],category_name: "train_model")
    @posts = Post.where(id: Item)
  end

  def model_gun
    @user = current_user
    @items = Item.where(category_name: "model_gun")
  end

  def model_gun_details
    @user = current_user
    @items = Item.where(id: params[:id],category_name: "model_gun")
    @posts = Post.where(id: Item)
  end

  def other
    @user = current_user
    @items = Item.where(category_name: "other")
  end

  def other_details
    @user = current_user
    @items = Item.where(id: params[:id],category_name: "other")
    @posts = Post.where(id: Item)
  end


end
