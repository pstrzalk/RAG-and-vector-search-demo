class RagsController < ApplicationController
  before_action :set_rag, only: %i[ show edit update destroy ]

  # GET /rags or /rags.json
  def index
    @rags = Rag.all
  end

  # GET /rags/1 or /rags/1.json
  def show
  end

  # GET /rags/new
  def new
    @rag = Rag.new
  end

  # GET /rags/1/edit
  def edit
  end

  # POST /rags or /rags.json
  def create
    @rag = Rag.new(rag_params)

    respond_to do |format|
      if @rag.save
        format.html { redirect_to @rag, notice: "Rag was successfully created." }
        format.json { render :show, status: :created, location: @rag }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rags/1 or /rags/1.json
  def update
    respond_to do |format|
      if @rag.update(rag_params)
        format.html { redirect_to @rag, notice: "Rag was successfully updated." }
        format.json { render :show, status: :ok, location: @rag }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rags/1 or /rags/1.json
  def destroy
    @rag.destroy!

    respond_to do |format|
      format.html { redirect_to rags_path, status: :see_other, notice: "Rag was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rag
      @rag = Rag.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rag_params
      params.require(:rag).permit(:name, :description, :rate, :color, :size)
    end
end
