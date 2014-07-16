class DistancesController < ApplicationController

  def createT
    distance = Distance.new
    distance.from = params[:from]
    distance.to = params[:to]
    distance.time = params[:time]
    distance.save

    redirect_to data_time_path
  end

  def listT
    @distances = Distance.all
    render :createT
  end

  def destroy
    distance = Distance.find(params[:id])
    distance.destroy
    redirect_to data_time_path
  end

end