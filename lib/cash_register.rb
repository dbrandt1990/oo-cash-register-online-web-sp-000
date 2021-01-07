class CashRegister
  attr_accessor :total, :discount
  
  def initialize(total = 0, discount = 20)
    @discount = discount
    @total = total
    @items = []
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity = 1)
    price = price * quantity
    @total =  price
    count = 0 
    while count < quantity
    @items << title
    count ++
  end
  end

  def apply_discount
    puts "discount #{@discount}"
    total = @total.to_f
    discount = @discount.to_f / 100
    reduced = total * discount
    if @discount == nil 
      @total = reduced.to_i
     return "There is no discount to apply."
    else
      @total = total - reduced
      puts "total discount #{@total}"
      return"After the discount, the total comes to $#{@total.to_i}."
    end
  end
  
  def items
    @items
  end
end
