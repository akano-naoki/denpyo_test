class BigDepartmentsController < ApplicationController
  before_action :set_big_department, only: [:show, :edit, :update, :destroy]

  # GET /big_departments
  # GET /big_departments.json
  def index
    @big_departments = BigDepartment.all
  end

  # GET /big_departments/1
  # GET /big_departments/1.json
  def show
  end

  # GET /big_departments/new
  def new
    @big_department = BigDepartment.new
  end

  # GET /big_departments/1/edit
  def edit
  end

  # POST /big_departments
  # POST /big_departments.json
  def create
    @big_department = BigDepartment.new(big_department_params)

    respond_to do |format|
      if @big_department.save
        format.html { redirect_to @big_department, notice: 'Big department was successfully created.' }
        format.json { render :show, status: :created, location: @big_department }
      else
        format.html { render :new }
        format.json { render json: @big_department.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /big_departments/1
  # PATCH/PUT /big_departments/1.json
  def update
    respond_to do |format|
      if @big_department.update(big_department_params)
        format.html { redirect_to @big_department, notice: 'Big department was successfully updated.' }
        format.json { render :show, status: :ok, location: @big_department }
      else
        format.html { render :edit }
        format.json { render json: @big_department.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /big_departments/1
  # DELETE /big_departments/1.json
  def destroy
    @big_department.destroy
    respond_to do |format|
      format.html { redirect_to big_departments_url, notice: 'Big department was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_big_department
      @big_department = BigDepartment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def big_department_params
      params.require(:big_department).permit(:name, :code, :description)
    end
end
