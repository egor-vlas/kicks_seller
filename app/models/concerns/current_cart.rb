#searching for parameters in path and finding out which session user on
module CurrentCart

    private

    def set_cart
        @cart = Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound
        @cart = Cart.create
        session[:cart_id] = @cart.id  
    end    
end