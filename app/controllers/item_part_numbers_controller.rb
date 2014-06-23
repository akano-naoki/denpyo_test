class ItemPartNumbersController < ApplicationController
  before_action :set_item_part_number, only: [:show, :edit, :update, :destroy]

  # GET /item_part_numbers
  # GET /item_part_numbers.json
  def index
    @item_part_numbers = ItemPartNumber.all
  end

  # GET /item_part_numbers/1
  # GET /item_part_numbers/1.json
  def show
  end

  # GET /item_part_numbers/new
  def new
    @item_part_number = ItemPartNumber.new
  end

  # GET /item_part_numbers/1/edit
  def edit
  end

  # POST /item_part_numbers
  # POST /item_part_numbers.json
  def create
    @item_part_number = ItemPartNumber.new(item_part_number_params)

    respond_to do |format|
      if @item_part_number.save
        format.html { redirect_to @item_part_number, notice: 'Item part number was successfully created.' }
        format.json { render :show, status: :created, location: @item_part_number }
      else
        format.html { render :new }
        format.json { render json: @item_part_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_part_numbers/1
  # PATCH/PUT /item_part_numbers/1.json
  def update
    respond_to do |format|
      if @item_part_number.update(item_part_number_params)
        format.html { redirect_to @item_part_number, notice: 'Item part number was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_part_number }
      else
        format.html { render :edit }
        format.json { render json: @item_part_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_part_numbers/1
  # DELETE /item_part_numbers/1.json
  def destroy
    @item_part_number.destroy
    respond_to do |format|
      format.html { redirect_to item_part_numbers_url, notice: 'Item part number was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_part_number
      @item_part_number = ItemPartNumber.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_part_number_params
      params.require(:item_part_number).permit(:category_code, :name, :code, :description)
    end
end
