class RocketsController < ApplicationController
  before_action :set_rocket, only: [:show, :edit, :update]

  # GET /rockets
  # GET /rockets.json
  def index
    @rockets = Rocket.all
  end

# II
  # GET /rockets/1
  # GET /rockets/1.json
  def show
  end

# I
  # GET /rockets/new
  def new
    @rocket = Rocket.new
  end

  # POST /rockets
  # POST /rockets.json
  def create
    @rocket = Rocket.new(rocket_params)

    respond_to do |format|
      if @rocket.save
        format.html { redirect_to @rocket, notice: 'Rocket was successfully created.' }
        format.json { render :show, status: :created, location: @rocket }
      else
        format.html { render :new }
        format.json { render json: @rocket.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /rockets/1/edit
  def edit
  end

  # PATCH/PUT /rockets/1
  # PATCH/PUT /rockets/1.json
  def update
    respond_to do |format|
      if @rocket.update(rocket_params)
        format.html { redirect_to @rocket, notice: 'Rocket was successfully updated.' }
        format.json { render :show, status: :ok, location: @rocket }
      else
        format.html { render :edit }
        format.json { render json: @rocket.errors, status: :unprocessable_entity }
      end
    end
  end


# III
  # # LAUNCH
  # def launch
  #   redirect_to '/', notice: 'Rocket launched !!!!!'
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rocket
      @rocket = Rocket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rocket_params
      params.require(:rocket).permit(:parts, :name)
    end
end
