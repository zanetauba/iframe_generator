class SinglesController < ApplicationController

  def index         # GET /singles
    @singles = Single.all
  end

  def show          # GET /singles/:id
    @single = Single.find(params[:id])
  end

  def new           # GET /singles/new
    @single = Single.new
  end

  def create        # POST /singles
    @single = Single.new(single_params)
    @single.user_id = current_user.id
    @single.save

    if @single.save
      redirect_to single_path(@single)
    else
      render 'new'
    end
  end

  def edit          # GET /singles/:id/edit
  end

  def update        # PATCH /singles/:id
    @single.update(params[:single])
  end

  def destroy       # DELETE /singles/:id
    @single.destroy
  end

private

  def single_params
    params.require(:single).permit(:element, :iframe, :comment)
  end

  def set_single
    @single = Single.find(params[:id])
  end

end
