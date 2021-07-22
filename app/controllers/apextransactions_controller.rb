class ApextransactionsController < ApplicationController
  before_action :set_apextransaction, only: %i[ show edit update destroy ]

  # GET /apextransactions or /apextransactions.json
  def index
    @apextransactions = Apextransaction.all
  end

  # GET /apextransactions/1 or /apextransactions/1.json
  def show
  end

  # GET /apextransactions/new
  def new
    @apextransaction = Apextransaction.new
  end

  # GET /apextransactions/1/edit
  def edit
  end

  # POST /apextransactions or /apextransactions.json
  def create
    @apextransaction = Apextransaction.new(apextransaction_params)

    respond_to do |format|
      if @apextransaction.save
        format.html { redirect_to @apextransaction, notice: "Apextransaction was successfully created." }
        format.json { render :show, status: :created, location: @apextransaction }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @apextransaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apextransactions/1 or /apextransactions/1.json
  def update
    respond_to do |format|
      if @apextransaction.update(apextransaction_params)
        format.html { redirect_to @apextransaction, notice: "Apextransaction was successfully updated." }
        format.json { render :show, status: :ok, location: @apextransaction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @apextransaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apextransactions/1 or /apextransactions/1.json
  def destroy
    @apextransaction.destroy
    respond_to do |format|
      format.html { redirect_to apextransactions_url, notice: "Apextransaction was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_apextransaction
      @apextransaction = Apextransaction.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def apextransaction_params
      params.require(:apextransaction).permit(:description, :time, :transaction_id)
    end
end
