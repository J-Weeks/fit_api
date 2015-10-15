class TrainersController < ApplicationController
  before_action :set_trainer, only: [:show, :update, :destroy]

  # GET /trainers
  # GET /trainers.json
  def index
    @trainers = Trainer.all

    render json: @trainers
  end

  # GET /trainers/1
  # GET /trainers/1.json
  def show
    render json: @trainer
  end

  # POST /trainers
  # POST /trainers.json
  def create
    @trainer = Trainer.new(trainer_params)

    if @trainer.save
      render json: @trainer, status: :created, location: @trainer
    else
      render json: @trainer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /trainers/1
  # PATCH/PUT /trainers/1.json
  def update
    @trainer = Trainer.find(params[:id])

    if @trainer.update(trainer_params)
      head :no_content
    else
      render json: @trainer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /trainers/1
  # DELETE /trainers/1.json
  def destroy
    @trainer.destroy

    head :no_content
  end

  private

    def set_trainer
      @trainer = Trainer.find(params[:id])
    end

    def trainer_params
      params.require(:trainer).permit(:email, :password, :auth_token, :bio, :pic_url)
    end
end
