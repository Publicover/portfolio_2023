class AppsController < ApplicationController
  before_action :set_app, except: [:index, :new, :create, :tagged]
  skip_before_action :authenticate_user!, only: [:show, :tagged]

  def index
    @pagy, @apps = pagy(App.all.order(created_at: :desc))
    authorize @apps
  end

  def show; end

  def new
    @app = App.new
    authorize @app
  end

  def create
    @app = App.new(app_params)
    authorize @app

    if @app.save
      redirect_to apps_path, notice: 'App created.'
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    @app.update(app_params)
    redirect_to apps_path, notice: 'Update successful.'
  end

  def destroy
    @app.destroy
    redirect_to apps_path, notice: 'Delete successful.'
  end

  def tagged
    if params[:tag].present?
      @apps = App.tagged_with(params[:tag])
    else
      @pagy, @apps = pagy(App.all.order(created_at: :desc))
    end
    @tag = params[:tag]
    authorize @apps
  end

  private

    def set_app
      @app = App.find(params[:id])
      authorize @app
    end

    def app_params
      params.require(:app).permit(policy(App).permitted_attributes)
    end
end
