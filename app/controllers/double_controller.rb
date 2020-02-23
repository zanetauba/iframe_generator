class DoubleController < ApplicationController


  def index         # GET /doubles
    @doubles = Double.all
  end

  def show          # GET /doubles/:id
    @double = Double.find(params[:id])
  end

  def new           # GET /doubles/new
    @double = Double.new
  end

  def create        # POST /doubles
    @double = Double.new(double_params)
    @double.user_id = current_user.id
    @double.save
  end

  def edit          # GET /doubles/:id/edit
  end

  def update        # PATCH /doubles/:id
    @double.update(params[:double])
  end

  def destroy       # DELETE /doubles/:id
    @double.destroy
  end

private

  def double_params
    params.require(:double).permit(:element, :iframe1, :iframe2, :comment)
  end

  def set_double
    @double = Double.find(params[:id])
  end

end

