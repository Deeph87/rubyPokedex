class TypesController < ApplicationController
  before_action :set_type, only: [:show, :edit, :update, :destroy]

  def index
    @types = Type.all
  end

  def show; end

  def new
    @type = Type.new
  end

  def edit; end

  def create
    @type = Type.new(type_params)

      if @type.save
        redirect_to @type, notice: 'Le type a bien été mis à jour !'
      else
        render :new
      end
  end

  def update
      if @type.update(type_params)
        redirect_to @type, notice: 'Type was successfully updated.'
      else
        render :edit
      end
  end

  def destroy
    @type.destroy
      redirect_to types_url, notice: 'Type was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type
      @type = Type.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_params
      params.require(:type).permit(:name, :color)
    end
end
