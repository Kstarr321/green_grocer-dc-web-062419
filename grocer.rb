def consolidate_cart(arr)
hash = {}

  arr.each do |all|
    all.each do |item, details|
      if hash[item] 
        hash[item][:count] +=1

      else 
        hash[item] = details
        hash[item][:count] = 1

      end
    end
  end 
  hash
end

def apply_coupons(cart, coupon)
final = {}
sub = {}
  cart.each do |item, details|
    if item == coupon[:item] && details[:count] >= coupon[:num]
      final[item] ||= {}
      final[item][:price] = details[:price]
      final[item][:clearance] = details[:clearance]
      final[item][:count] = details[:count] - coupon[:num]
      
      sub["#{item} W/COUPON"] ||= {}
      sub["#{item} W/COUPON"][:price] = coupon[:cost]
      sub["#{item} W/COUPON"][:clearance] = details[:clearance]
      sub["#{item} W/COUPON"][:count] = details[:count] - coupon[:num]

    else
      final[item] = details

    end

  end
  final.merge(sub)
  
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
