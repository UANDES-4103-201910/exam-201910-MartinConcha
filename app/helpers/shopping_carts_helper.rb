module ShoppingCartsHelper

	def shopping_cart_get_products
    if session[:shopping_cart].nil?
      return {}
    end
    Hash[*session[:shopping_cart].group_by{ |v| v.to_i }.flat_map{ |k, v| [k, v.size] }]
  end
end
