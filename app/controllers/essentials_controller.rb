class EssentialsController < ApplicationController
  before_action :set_essential, only: [:show, :edit, :update, :destroy]

  # GET /essentials
  # GET /essentials.json
  def index
    @essentials = Essential.all
  end

  # GET /essentials/1
  # GET /essentials/1.json
  def show
  end

  # GET /essentials/new
  def new
    @essential = Essential.new
  end

  # GET /essentials/1/edit
  def edit
  end

  # POST /essentials
  # POST /essentials.json
  def create
    @essential = Essential.new(essential_params)

    respond_to do |format|
      if @essential.save
        format.html { redirect_to @essential, notice: 'Essential was successfully created.' }
        format.json { render :show, status: :created, location: @essential }
      else
        format.html { render :new }
        format.json { render json: @essential.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /essentials/1
  # PATCH/PUT /essentials/1.json
  def update
    respond_to do |format|
      if @essential.update(essential_params)
        format.html { redirect_to @essential, notice: 'Essential was successfully updated.' }
        format.json { render :show, status: :ok, location: @essential }
      else
        format.html { render :edit }
        format.json { render json: @essential.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /essentials/1
  # DELETE /essentials/1.json
  def destroy
    @essential.destroy
    respond_to do |format|
      format.html { redirect_to essentials_url, notice: 'Essential was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_essential
      @essential = Essential.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def essential_params
      params.fetch(:essential, {})
    end
end
