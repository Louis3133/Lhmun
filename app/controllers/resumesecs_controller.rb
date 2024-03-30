class ResumesecsController < ApplicationController
  before_action :set_resumesec, only: %i[ show edit update destroy ]

  # GET /resumesecs or /resumesecs.json
  def index
    @resumesecs = Resumesec.all
  end

  # GET /resumesecs/1 or /resumesecs/1.json
  def show
  end

  # GET /resumesecs/new
  def new
    @resumesec = Resumesec.new
  end

  # GET /resumesecs/1/edit
  def edit
  end

  # POST /resumesecs or /resumesecs.json
  def create
    @resumesec = Resumesec.new(resumesec_params)

    respond_to do |format|
      if @resumesec.save
        format.html { redirect_to resumesec_url(@resumesec), notice: "Resumesec was successfully created." }
        format.json { render :show, status: :created, location: @resumesec }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @resumesec.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resumesecs/1 or /resumesecs/1.json
  def update
    respond_to do |format|
      if @resumesec.update(resumesec_params)
        format.html { redirect_to resumesec_url(@resumesec), notice: "Resumesec was successfully updated." }
        format.json { render :show, status: :ok, location: @resumesec }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @resumesec.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resumesecs/1 or /resumesecs/1.json
  def destroy
    @resumesec.destroy!

    respond_to do |format|
      format.html { redirect_to resumesecs_url, notice: "Resumesec was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resumesec
      @resumesec = Resumesec.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def resumesec_params
      params.require(:resumesec).permit(:title, :description, :paragraphe1, :paragraphe2, :image)
    end
end
