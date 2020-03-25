class DoublesController < ApplicationController

  def show          # GET /doubles/:id
    @double = Double.find(params[:id])
  end

  def new           # GET /doubles/new
    @double = Double.new
  end

  def create        # POST /doubles
    @double = Double.new(double_params)
   # @double.user_id = current_user.id
    @double.save

    if @double.save
      redirect_to double_path(@double)
    else
      render 'new'
    end
  end

  def destroy       # DELETE /doubles/:id
    @double.destroy
  end

private

  def double_params
    params.require(:double).permit(:element, :iframe1, :iframe2)
  end

  def set_double
    @double = Double.find(params[:id])
  end

end

