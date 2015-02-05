@inventory = {'001' => {'in_stock' => 5, 'price'=> 50, 'brand' => 'nike'}, 
			  '002' => {'in_stock' => 12, 'price'=> 90, 'brand' => 'adidas'},
			  '003' => {'in_stock' => 34, 'price'=> 140, 'brand' => 'puma'}}

def display_inv
	@inventory.each do | key, value |
	puts "serial number:#{key} \ndetaisl: #{value}"

	end
end


def add_inv
	puts "What brand are you adding to inventory?"
		new_brand = gets.chomp.downcase
	puts "whats the price"
		new_price = gets.chomp.to_i
	puts "How many in stock?"
		new_stock = gets.chomp.to_i
		next_inv = @inventory.count + 1
		
		@inventory["00#{next_inv}"] = {'in_stock' => new_stock, 'price'=> new_price, 'brand' => new_brand}
	
	
	

end

def del_inv
	puts "what's the serial for the inventory you want removed?"
	 serial = gets.chomp.downcase.to_s
	  puts "Enter 'Y' to remove " 
	  puts @inventory[serial]
	  	confirm_del = gets.chomp.upcase
	  		if confirm_del == "Y"
	  			@inventory[serial] = nil
	  		else 
	 end

	
	 
  
end

def change_inv
	puts "Whats the serial for the inventory to be altered?"
	serial = gets.chomp.downcase.to_s
	puts @inventory[serial]
	puts "Enter 'B' if you want to change the brand name.
	Enter 'P' if you want to alter the price.
	Enter 'S' if you want to alter the number in stock."
	alter_key = gets.chomp.upcase
		if alter_key == "B"
				puts "What's the altered brand name?"
				new_brand = gets.chomp.downcase
				@inventory[serial]["brand"] = new_brand
		elsif alter_key == "P"	
				puts "What's the altered price?"
				new_price = gets.chomp.to_i
				@inventory[serial]["price"] = new_price
		elsif alter_key == "S"
				puts "What's the altered stock number?"
				new_stock = gets.chomp.to_i
				@inventory[serial]["in_stock"] = new_stock
		else 
		end

	
	

end


puts "Inventory Time!!!!"



while true
	puts "Current Inventory List"
	display_inv
	puts "To add a new shoeline to our inventory enter 'A'.
	If you would like to alter current inventory enter 'C'.
	To delete an shoeline from inventory enter 'D'.
	To exit, enter 'E'."
	initial_select = gets.chomp.upcase
		if initial_select == "A"
			add_inv
		elsif initial_select == "C"
			change_inv
		elsif initial_select == "D"
			del_inv
		elsif initial_select == "E"
			break
		else
		end
end





