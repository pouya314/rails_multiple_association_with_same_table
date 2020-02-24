class MoneyMovementsController < ApplicationController
  before_action :set_money_movement, only: [:show, :edit, :update, :destroy]

  # GET /money_movements
  # GET /money_movements.json
  def index
    @money_movements = MoneyMovement.all
  end

  # GET /money_movements/1
  # GET /money_movements/1.json
  def show
  end

  # GET /money_movements/new
  def new
    @money_movement = MoneyMovement.new
  end

  # GET /money_movements/1/edit
  def edit
  end

  # POST /money_movements
  # POST /money_movements.json
  def create
    @money_movement = MoneyMovement.new(money_movement_params)

    respond_to do |format|
      if @money_movement.save
        format.html { redirect_to @money_movement, notice: 'Money movement was successfully created.' }
        format.json { render :show, status: :created, location: @money_movement }
      else
        format.html { render :new }
        format.json { render json: @money_movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /money_movements/1
  # PATCH/PUT /money_movements/1.json
  def update
    respond_to do |format|
      if @money_movement.update(money_movement_params)
        format.html { redirect_to @money_movement, notice: 'Money movement was successfully updated.' }
        format.json { render :show, status: :ok, location: @money_movement }
      else
        format.html { render :edit }
        format.json { render json: @money_movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /money_movements/1
  # DELETE /money_movements/1.json
  def destroy
    @money_movement.destroy
    respond_to do |format|
      format.html { redirect_to money_movements_url, notice: 'Money movement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_money_movement
      @money_movement = MoneyMovement.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def money_movement_params
      params.require(:money_movement).permit(:amount, :from_account_id, :to_account_id)
    end
end
