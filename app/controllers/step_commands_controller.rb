class StepCommandsController < ApplicationController
  before_action :set_step_command, only: [:show, :edit, :update, :destroy]

  # GET /step_commands
  # GET /step_commands.json
  def index
    @step_commands = StepCommand.all
  end

  # GET /step_commands/1
  # GET /step_commands/1.json
  def show
  end

  # GET /step_commands/new
  def new
    @step_command = StepCommand.new
  end

  # GET /step_commands/1/edit
  def edit
  end

  # POST /step_commands
  # POST /step_commands.json
  def create
    @step_command = StepCommand.new(step_command_params)

    respond_to do |format|
      if @step_command.save
        format.html { redirect_to @step_command, notice: 'Step command was successfully created.' }
        format.json { render :show, status: :created, location: @step_command }
      else
        format.html { render :new }
        format.json { render json: @step_command.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /step_commands/1
  # PATCH/PUT /step_commands/1.json
  def update
    respond_to do |format|
      if @step_command.update(step_command_params)
        format.html { redirect_to @step_command, notice: 'Step command was successfully updated.' }
        format.json { render :show, status: :ok, location: @step_command }
      else
        format.html { render :edit }
        format.json { render json: @step_command.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /step_commands/1
  # DELETE /step_commands/1.json
  def destroy
    @step_command.destroy
    respond_to do |format|
      format.html { redirect_to step_commands_url, notice: 'Step command was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_step_command
      @step_command = StepCommand.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def step_command_params
      params.require(:step_command).permit(:step_id, :command_id)
    end
end
