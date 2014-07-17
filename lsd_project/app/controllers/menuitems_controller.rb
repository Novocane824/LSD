class MenuitemsController < ApplicationController

  def createmenu
    menuitem = Menuitems.new
    menuitem.item = params[:item]
    menuitem.price = params[:price]
    menuitem.save

    # redirect_to restaurants_path
  end



  def showmenu
    @menuitems = Menuitems.find(params[:id])
  end

end