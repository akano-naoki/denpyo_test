class ShopDepartmentsController < ApplicationController
  before_action :set_shop_department, only: [:show, :edit, :update, :destroy]

  # GET /shop_departments
  # GET /shop_departments.json
  def index
    @shop_departments = ShopDepartment.all
  end

  # GET /shop_departments/1
  # GET /shop_departments/1.json
  def show
  end

  # GET /shop_departments/new
  def new
    @shop_department = ShopDepartment.new
  end

  # GET /shop_departments/1/edit
  def edit
  end

  # POST /shop_departments
  # POST /shop_departments.json
  def create
    @shop_department = ShopDepartment.new(shop_department_params)

    respond_to do |format|
      if @shop_department.save
        format.html { redirect_to @shop_department, notice: 'Shop department was successfully created.' }
        format.json { render :show, status: :created, location: @shop_department }
      else
        format.html { render :new }
        format.json { render json: @shop_department.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shop_departments/1
  # PATCH/PUT /shop_departments/1.json
  def update
    respond_to do |format|
      if @shop_department.update(shop_department_params)
        format.html { redirect_to @shop_department, notice: 'Shop department was successfully updated.' }
        format.json { render :show, status: :ok, location: @shop_department }
      else
        format.html { render :edit }
        format.json { render json: @shop_department.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shop_departments/1
  # DELETE /shop_departments/1.json
  def destroy
    @shop_department.destroy
    respond_to do |format|
      format.html { redirect_to shop_departments_url, notice: 'Shop department was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shop_department
      @shop_department = ShopDepartment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shop_department_params
      params.require(:shop_department).permit(:name)
    end
end
