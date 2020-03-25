class TriplesController < ApplicationController

  def show          # GET /triples/:id
    @triple = Triple.find(params[:id])
  end

  def new           # GET /triples/new
    @triple = Triple.new
  end

  def create        # POST /triples
    @triple = Triple.new(triple_params)
  #  @triple.user_id = current_user.id
    @triple.save

    if @triple.save
      redirect_to triple_path(@triple)
    else
      render 'new'
    end
  end

  def destroy       # DELETE /triples/:id
    @triple.destroy
  end

private

  def triple_params
    params.require(:triple).permit(:element, :iframe1, :iframe2, :iframe3)
  end

  def set_triple
    @triple = Triple.find(params[:id])
  end

end
