class ClientsController < ApplicationController
  before_action :set_client, only: [:edit, :update, :destroy]

  def index
    @clients = Client.descendent
  end

  def new 
    @client = Client.new
  end

  def create 
    @client = Client.new(client_params)

    respond_to do |format|
      if @client.save
        format.json { head :no_content }
        format.js
      else
        format.json { render json: @client.errors.full_messages, status: :unprocessable_entity }
        format.js { render :new }
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @client.update(client_params)
        format.json {head :no_content}
        format.js
      else
        format.json { render json: @client.error.full_messages, status: :unprocessable_entity }
        format.js { render :edit }
      end
    end
  end

  def destroy
    @client.destroy
    respond_to do |format|
      format.js
      format.json { respond :no_content }
    end
  end

  def buscador
    @resultados = Client.buscador(params[:termino]).map do |cliente|
      {
        id: cliente.id,
        nombre_cliente: cliente.nombre
      }
    end

    respond_to do |format|
      format.json { render :json => @resultados }
    end
  end

  private 
  
  def set_client
    @client = Client.find(params[:id])
  end

  def client_params
    params.require(:client).permit(:total_name, :address, :phone_number)
  end
end