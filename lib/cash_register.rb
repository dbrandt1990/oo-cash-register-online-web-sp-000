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
    total = @total.to_f 
    discount = @discount.to_f / 100
    reduce = total * discount
    puts reduce.to_i
    if discount == 0 
    return "There is no discount to apply." 
    end
    @total = reduce
    return"After the discount, the total comes to $#{@total}."
  end
end
