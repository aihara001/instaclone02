class InstaclosController < ApplicationController
before_action :set_instaclo, only: [:show, :edit, :update, :destroy]
  
  def index
    @instaclos = Instaclo.all
  end
  
  def new
    if params[:back]
      @instaclo = Instaclo.new(instaclo_params)
    else
      @instaclo = Instaclo.new
    end
  end
  
  def create
    @instaclo = Instaclo.new(instaclo_params)
    if @instaclo.save
      redirect_to instaclos_path, notice: "作成しました！"
    else
      render 'new'
    end
  end

  def show
  end
  
  def edit
  end

  def update
    if @instaclo.update(instaclo_params)
      redirect_to instaclos_path, notice: "編集しました！"
    else
      render 'edit'
    end
  end

  def destroy
    @instaclo.destroy
    redirect_to instaclos_path, notice:"削除しました！"
  end
  
  def confirm
    @instaclo = Instaclo.new(instaclo_params)
    render :new if @instaclo.invalid?
  end
  
  private
  def instaclo_params
    params.require(:instaclo).permit(:content)
  end

  def set_instaclo
    @instaclo = Instaclo.find(params[:id])
  end

end
