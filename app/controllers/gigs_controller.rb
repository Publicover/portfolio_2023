class GigsController < ApplicationController
  before_action :set_gig, except: [:index, :new, :create, :tagged]
  skip_before_action :authenticate_user!, only: [:show, :tagged]

  def index
    @pagy, @gigs = pagy(Gig.all.order(created_at: :asc))
    authorize @gigs
  end

  def show; end

  def new
    @gig = Gig.new
    authorize @gig
  end

  def create
    @gig = Gig.new(gig_params)
    authorize @gig

    if @gig.save
      redirect_to gigs_path, notice: 'Gig created.'
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    @gig.update(gig_params)
    redirect_to gigs_path, notice: 'Update successful.'
  end

  def destroy
    @gig.destroy
    redirect_to gigs_path, notice: 'Delete successful.'
  end

  def tagged
    if params[:tag].present?
      @gigs = Gig.tagged_with(params[:tag]).order(created_at: :desc)
    else
      @pagy, @gigs = pagy(Gig.all.order(created_at: :desc))
    end
    @tag = params[:tag]
    authorize @gigs
  end

  private

    def set_gig
      @gig = Gig.find(params[:id])
      authorize @gig
    end

    def gig_params
      params.require(:gig).permit(policy(Gig).permitted_attributes)
    end
end
