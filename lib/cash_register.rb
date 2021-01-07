class CashRegister
  attr_accessor :total, :discount
  
  def initialize(total = 0, discount = 20)
    @discount = discount
    @total = total
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity = 0)
    if quantity > 0
      price = price * quantity
    end
    total_dollars = @total.to_f 
    total_dollars += price
    @total = total_dollars
  end

  def apply_discount
    total = @total
    discount = @discount
    puts discount
    puts total
     apply = (100 - discount)/100
     puts apply
    @total =  total * apply
  end
end
