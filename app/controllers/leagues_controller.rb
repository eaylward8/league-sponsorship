class LeaguesController < ApplicationController
  def index; end

  def new
    @league = League.new
  end

  def create
    @league = League.new(league_params)
    return redirect_to action: :index if @league.save

    render :new
  end

  private

  def league_params
    params.require(:league).permit(:name, :lat, :lng, :price)
  end
end
