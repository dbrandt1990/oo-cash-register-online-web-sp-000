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
    puts "price #{price}"
    if quantity > 0
      price = price * quantity
    end
    @total =  price
    puts "add_item total #{@total}"
  end

  def apply_discount
    puts "discount #{@discount}"
    puts "total discount #{@total}"
    total = @total.to_f
    discount = @discount.to_f / 100
    reduced = total * discount
    if @discount == 0 
      @total = reduced
     return "There is no discount to apply."
    else
      @total = reduce
      return"After the discount, the total comes to $#{@total.to_i}."
    end
  end
end
