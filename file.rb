####################
# METHODS
####################

# Prints a list of products and returns
# the user's choice
def get_user_choice(products)
  puts "AVAILABLE PRODUCTS"
  products.each_with_index do |product, index|
	  puts "#{index}. #{product}"
  end
  puts "Enter the number of the product you want to buy:"
  gets.to_i
end

# Checks to see whether the user knows
# the code for this season's coupon.
# Methods that have a question mark should
# return a boolean value.
def user_has_coupon?(current_coupon)
  puts "Do you have a coupon? (y/n)"
  user_has_coupon = gets.chomp

  if user_has_coupon == "y"
	  puts "Enter the coupon code:"
	  coupon_code = gets.chomp
	  return coupon_code == current_coupon[:code]
	else
	  return false
  end
end

# Calculates the total for the user's purchase.
# This is simple right now, but could get
# more complicated!
def calculate_total(products, index)
  products[index][:price]
end

# Populates a hash with the user's card info.
def get_card_info
  card = {}
  puts "Enter your credit card number:"
  card[:number] = gets.chomp
  puts "Enter your expiration month:"
  card[:exp_month] = gets.chomp
  puts "Enter your expiration year:"
  card[:exp_year] = gets.chomp
  puts "Enter your CVC:"
  card[:cvc] = gets.chomp
  card
end

# You should fill this method in!
def run_charge(card, amount)
  puts "-" * 10
  puts "The charge method would run here."
  puts "It would use this card:"
  p card
  puts "And it would use this amount:"
  p amount
  puts "-" * 10
  puts "Your card has been charged."
end

####################
# PROGRAM DATA
####################

coupon = {code: 'SUMMERSALE2016', discount_in_cents: 50}

products = [
	{ description: "Hamster", price: 300},
	{ description: "Kitten", price: 550},
	{ description: "Puppy", price: 999},
	{ description: "Tarantula", price: 2049}
]

####################
# DRIVER CODE
####################

# Ask the user what they'd like to buy
user_choice = get_user_choice(products)

# Calculate the user's total
total = calculate_total(products, user_choice)
puts "Your total is #{total}."

if user_has_coupon?(coupon)
  total -= coupon[:discount_in_cents]
  puts "Coupon applied. Your total is now #{total}."
end

# Get the user's card info
user_card = get_card_info

# Charge the user
run_charge(user_card, total)
