class SupertypesController < ApplicationController
  before_action :set_supertype, only: %i[ show edit update destroy ]

  # GET /supertypes or /supertypes.json
  def index
    @supertypes = Supertype.all.sort_by{|e| e[:name]}
  end

  # GET /supertypes/1 or /supertypes/1.json
  def show
  end

  # GET /supertypes/new
  def new
    @supertype = Supertype.new
  end

  # GET /supertypes/1/edit
  def edit
  end

  # POST /supertypes or /supertypes.json
  def create
    @supertype = Supertype.new(supertype_params)

    respond_to do |format|
      if @supertype.save
        format.html { redirect_to supertype_url(@supertype), notice: "Supertype was successfully created." }
        format.json { render :show, status: :created, location: @supertype }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @supertype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supertypes/1 or /supertypes/1.json
  def update
    respond_to do |format|
      if @supertype.update(supertype_params)
        format.html { redirect_to supertype_url(@supertype), notice: "Supertype was successfully updated." }
        format.json { render :show, status: :ok, location: @supertype }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @supertype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supertypes/1 or /supertypes/1.json
  def destroy
    @supertype.destroy!

    respond_to do |format|
      format.html { redirect_to supertypes_url, notice: "Supertype was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supertype
      @supertype = Supertype.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def supertype_params
      params.require(:supertype).permit(:name)
    end
end
