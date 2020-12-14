class GuidsController < ApplicationController
  before_action :set_guid, only: [:show, :edit, :update, :destroy]

  # GET /guids
  # GET /guids.json
  def index
    @guids = Guid.all
  end

  # GET /guids/1
  # GET /guids/1.json
  def show
  end

  # GET /guids/new
  def new
    @guid = Guid.new
  end

  # GET /guids/1/edit
  def edit
  end

  # POST /guids
  # POST /guids.json
  def create
    @guid = Guid.new(guid_params)

    respond_to do |format|
      if @guid.save
        format.html { redirect_to @guid, notice: 'Guid was successfully created.' }
        format.json { render :show, status: :created, location: @guid }
      else
        format.html { render :new }
        format.json { render json: @guid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guids/1
  # PATCH/PUT /guids/1.json
  def update
    respond_to do |format|
      if @guid.update(guid_params)
        format.html { redirect_to @guid, notice: 'Guid was successfully updated.' }
        format.json { render :show, status: :ok, location: @guid }
      else
        format.html { render :edit }
        format.json { render json: @guid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guids/1
  # DELETE /guids/1.json
  def destroy
    @guid.destroy
    respond_to do |format|
      format.html { redirect_to guids_url, notice: 'Guid was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guid
      @guid = Guid.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def guid_params
      params.require(:guid).permit(:title)
    end
end
