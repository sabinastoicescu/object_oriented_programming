
class Goods
attr_accessor = :item, :cost, :price, :sales_tax, :import_tax 

	def initialize(quantity, item, cost)
		
		@price = price
		@item=item
		@cost=cost
		@sales_tax = sales_tax
		@import_tax = import_tax
	end

	def price_calculation
		@price = @quantity*(@cost+@sales_tax+@import_tax)
	end
	
	def basic_sales_tax(price)
		@sales_tax = 0 if @item.include? ["book","chocolate", "bar","chocolates","headache", "pills"] == true
		else @sales_tax = @price *10%   
		end
	end

	def import_duty(price)
		@import_tax = @cost * 5% if @item.include? "*imported" 
		else @import_tax = 0
		end
	end


	def to_s
		"1 #{@item} : #{@price.to_f(2)}"
	end
end

puts "Please input quantity, item and price."

shopping_basket1a = Goods.new(1,"book",12.49)
shopping_basket1a.price_calculation
shopping_basket1b = Goods.new(1,"music CD",14.99)
shopping_basket1b.price_calculation
shopping_basket1 = Goods.new(1,"chocolate bar",0.85)
shopping_basket1c.price_calculation

shopping_basket2a = Goods.new(1,"imported box of chocolates",10.00)
shopping_basket2a.price_calculation
shopping_basket2b = Goods.new(1,"imported bottle of perfume",47.50)
shopping_basket2b.price_calculation

shopping_basket3a = Goods.new(1,"imported bottle of perfume",27.99)
shopping_basket3a.price_calculation

shopping_basket3b = Goods.new(1,"bottle of perfume",18.99)
shopping_basket3b.price_calculation
shopping_basket3c =Goods.new(1,"packet of headache pills",9.75)
shopping_basket3c.price_calculation
shopping_basket3d = Goods.new(1,"box of imported chocolates",11.25)
#shopping_basket3d.price_calculation