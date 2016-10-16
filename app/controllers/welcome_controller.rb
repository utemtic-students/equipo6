class WelcomeController < ApplicationController
  def index
    @orders = current_user.orders.order("created_at desc")
  end
  def services
    @orders = current_user.orders.order("created_at desc")
  end
  def settingsUser
    @orders = current_user.orders.order("created_at desc")    
  end
  def company
    @orders = current_user.orders.order("created_at desc")    
  end
  def settingsCompany
    @orders = current_user.orders.order("created_at desc")
  end

  def unregistered
    @types = ''
    types = Type.all;
    @contMenuItem = 0;
    types.each do |type|
      @types.concat(type.Name)
      @types.concat('-')
      @types.concat(type.id.to_s)
      @types.concat(',')      
      @contMenuItem = @contMenuItem +1;
    end
  	render layout: "landing"
  end

  def payment_succed
  	if @shopping_cart.payed?
  		cookies[:shopping_cart_id] = nil
  	else
  		redirect_to carrito_path
  	end
  end
end
