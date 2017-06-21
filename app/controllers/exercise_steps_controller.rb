class ExerciseStepsController < ApplicationController
  before_action :set_exercise_step, only: [:show, :edit, :update, :destroy]

  # GET /exercise_steps
  # GET /exercise_steps.json
  def index
    @exercise_steps = ExerciseStep.all
  end

  # GET /exercise_steps/1
  # GET /exercise_steps/1.json
  def show
  end

  # GET /exercise_steps/new
  def new
    @exercise_step = ExerciseStep.new
  end

  # GET /exercise_steps/1/edit
  def edit
  end

  # POST /exercise_steps
  # POST /exercise_steps.json
  def create
    @exercise_step = ExerciseStep.new(exercise_step_params)

    respond_to do |format|
      if @exercise_step.save
        format.html { redirect_to @exercise_step, notice: 'Exercise step was successfully created.' }
        format.json { render :show, status: :created, location: @exercise_step }
      else
        format.html { render :new }
        format.json { render json: @exercise_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exercise_steps/1
  # PATCH/PUT /exercise_steps/1.json
  def update
    respond_to do |format|
      if @exercise_step.update(exercise_step_params)
        format.html { redirect_to @exercise_step, notice: 'Exercise step was successfully updated.' }
        format.json { render :show, status: :ok, location: @exercise_step }
      else
        format.html { render :edit }
        format.json { render json: @exercise_step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercise_steps/1
  # DELETE /exercise_steps/1.json
  def destroy
    @exercise_step.destroy
    respond_to do |format|
      format.html { redirect_to exercise_steps_url, notice: 'Exercise step was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exercise_step
      @exercise_step = ExerciseStep.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exercise_step_params
      params.require(:exercise_step).permit(:exercise_id, :step_id)
    end
end
