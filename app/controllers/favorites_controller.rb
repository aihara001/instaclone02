class FavoritesController < ApplicationController

  def show
    @favorites_instaclos = current_user.favorite_instaclos
  end
  
  def create
    favorite = current_user.favorites.create(instaclo_id: params[:instaclo_id])
    redirect_to instaclos_url, notice: "#{favorite.instaclo.user.name}さんの投稿をお気に入り登録しました"
  end

  def destroy
    favorite = current_user.favorites.find_by(id: params[:id]).destroy
    redirect_to instaclos_url, notice: "#{favorite.instaclo.user.name}さんの投稿をお気に入り解除しました"
  end
end
