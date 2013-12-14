class ContactaController < ApplicationController
  before_action :set_contactum, only: [:show, :edit, :update, :destroy]

  # GET /contacta
  # GET /contacta.json
  def index
    @contacta = Contactum.all
  end

  # GET /contacta/1
  # GET /contacta/1.json
  def show
  end

  # GET /contacta/new
  def new
    @contactum = Contactum.new
  end

  # GET /contacta/1/edit
  def edit
  end

  # POST /contacta
  # POST /contacta.json
  def create
    @contactum = Contactum.new(contactum_params)

    respond_to do |format|
      if @contactum.save
        format.html { redirect_to @contactum, notice: 'Contactum was successfully created.' }
        format.json { render action: 'show', status: :created, location: @contactum }
      else
        format.html { render action: 'new' }
        format.json { render json: @contactum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contacta/1
  # PATCH/PUT /contacta/1.json
  def update
    respond_to do |format|
      if @contactum.update(contactum_params)
        format.html { redirect_to @contactum, notice: 'Contactum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @contactum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacta/1
  # DELETE /contacta/1.json
  def destroy
    @contactum.destroy
    respond_to do |format|
      format.html { redirect_to contacta_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contactum
      @contactum = Contactum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contactum_params
      params.require(:contactum).permit(:cpfCliente, :cnpjRestaurante)
    end
end
