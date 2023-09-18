class ClientsController < ApplicationController
  before_action :set_client, except: [:index, :new, :create]

  def index
    @pagy, @clients = pagy(Client.all.order(created_at: :desc))
    authorize @clients
  end

  def show; end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)

    if @client.save
      redirect_to clients_path, notice: 'Create successful'
    else
      render 'new'
    end
  end

  def edit; end

  def update
    @client.update(client_params)
    redirect_to clients_path, notice: 'Update successful'
  end

  def destroy
    @client.destroy
    redirect_to clients_path, notice: 'Delete successful'
  end

  private

    def set_client
      @client = Client.find(params[:id])
      authorize @client
    end

    def client_params
      params.require(:client).permit(policy(Client).permitted_attributes)
    end
end
