class SkillsController < ApplicationController
  before_action :set_skill, except: [:index, :new, :create]

  def index
    @pagy, @skills = pagy(Skill.all)
    authorize @skills
  end

  def show; end

  def new
    @skill = Skill.new
    authorize @skill
  end

  def create
    @skill = Skill.new(skill_params)
    authorize @skill

    if @skill.save
      redirect_to skills_path, notice: 'Skill created'
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    @skill.update(skill_params)
    redirect_to skills_path, notice: 'Update successful.'
  end

  def destroy
    @skill.destroy
    redirect_to skills_path, notice: 'Delete successful'
  end

  private

    def set_skill
      @skill = Skill.find(params[:id])
      authorize @skill
    end

    def skill_params
      params.require(:skill).permit(policy(Skill).permitted_attributes)
    end
end
