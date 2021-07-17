class ClientsController < ApplicationController
  before_action :set_client, only: %i[ show edit update destroy ]

  # GET /clients or /clients.json
  def index
    require 'date'
    today = Date.today

    @year = today.year
    @clients = Client.all
  end

  # GET /clients/1 or /clients/1.json
  def show
    require 'date'
    today = @client.created_at
    @year = today.year
  end

  # GET /clients/new
  def new
    @client = Client.new
  end

  # GET /clients/1/edit
  def edit
  end

  # POST /clients or /clients.json
  def create
    @client = Client.new(client_params)

    respond_to do |format|
      if @client.save
        format.html { redirect_to @client, notice: "Client was successfully created." }
        format.json { render :show, status: :created, location: @client }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clients/1 or /clients/1.json
  def update
    respond_to do |format|
      if @client.update(client_params)
        format.html { redirect_to @client, notice: "Client was successfully updated." }
        format.json { render :show, status: :ok, location: @client }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clients/1 or /clients/1.json
  def destroy
    @client.destroy
    respond_to do |format|
      format.html { redirect_to clients_url, notice: "Client was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def account_num
    @client.number_dependents=MainModel.maximum(:number_dependents)+1
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def client_params
      params.require(:client).permit(:sur_name, :first_name, :other_name, :gender, :relationship_status, :number_dependents, :nationality, :profession, :nin, :phone_number1, :phone_number2, :r_village, :r_parish, :r_county, :r_district, :work_place, :work_location, :kin_surname, :kin_firstname, :kin_relation, :kin_phone)
    end
end
