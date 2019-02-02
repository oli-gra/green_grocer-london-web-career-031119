require 'pry'

def consolidate_cart(cart)
my_hash = {}
  cart.each do |hash|
    hash.each do |item, data|
      if my_hash[item] == nil
        my_hash[item] = data
        my_hash[item][:count] = 1
      else
        my_hash[item][:count] += 1
      end
    end
  end
  my_hash
end
  
def apply_coupons(cart, coupons)
=begin
cart {food{:price=>x,:count=>x}
coupons [{:item=>x,:num=>2, :cost=>x]
1. look in cart
2. is there a coupon for that item?
3. is quantity of item in cart enough?
4. add the item /w coupon to cart
5. remove appropriate quantity of item
=end
  coupons.each do |coupon|
    cart.each do |food,food_data|
      food_data.each do |food_key,data|
        if food == coupon[:item] && food_data[:count] >= coupon[:num]
          cart["#{food} W/COUPON"] = {price: coupon[:cost], clearance: food_data[:clearance], count: (coupon[:num]/food_data[:count])}
        end
      end
    end
  end
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
