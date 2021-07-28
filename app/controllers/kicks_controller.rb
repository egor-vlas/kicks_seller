class KicksController < ApplicationController
  before_action :set_kick, only: %i[ show edit update destroy ]
  # before_action :authenticate_user!
  # GET /kicks or /kicks.json
  def index
    @kicks = Kick.all
  end

  # GET /kicks/1 or /kicks/1.json
  def show
  end

  # GET /kicks/new
  def new
    if user_signed_in?
      if current_user.profile
        @kick = Kick.new
      else
        redirect_to new_profile_path
      end
    else
      redirect_to new_user_session_path
    end
  end

  # GET /kicks/1/edit
  def edit
  end

  # POST /kicks or /kicks.json
  def create
    @kick = Kick.new(kick_params)
    @kick.seller_id = current_user.profile.id
    respond_to do |format|
      if @kick.save
        format.html { redirect_to @kick, notice: "Kick was successfully created." }
        format.json { render :show, status: :created, location: @kick }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @kick.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kicks/1 or /kicks/1.json
  def update
    respond_to do |format|
      if @kick.update(kick_params)
        format.html { redirect_to @kick, notice: "Kick was successfully updated." }
        format.json { render :show, status: :ok, location: @kick }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @kick.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kicks/1 or /kicks/1.json
  def destroy
    @kick.destroy
    respond_to do |format|
      format.html { redirect_to kicks_url, notice: "Kick was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kick
      @kick = Kick.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kick_params
      params.require(:kick).permit(:tittle, :description, :price, :brand, :condition, :buyer_id, :seller_id, :profile_id, pictures: [])
    end
end
