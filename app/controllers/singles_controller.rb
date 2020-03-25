class SinglesController < ApplicationController

  def show          # GET /singles/:id
    @single = Single.find(params[:id])
  end

  def new           # GET /singles/new
    @single = Single.new
  end

  def create        # POST /singles
    @single = Single.new(single_params)
    @single.save

    if @single.save
      redirect_to single_path(@single)
    else
      render 'new'
    end
  end

  def destroy       # DELETE /singles/:id
    @single.destroy
  end

private

  def single_params
    params.require(:single).permit(:element, :iframe)
  end

  def set_single
    @single = Single.find(params[:id])
  end

end
