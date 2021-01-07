class CashRegister
  attr_accessor :total, :discount, :price, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    puts "init total #{@total}"
  end
  
  def total
    puts @total
    @total
  end
  
  def add_item(title, price, quantity = 1)
    @price = price * quantity
    @total =  @total.to_f + @price
    quantity > 1 ? @items.fill(title,@item.size, quantity) : @items << title
  end

  def apply_discount
    puts @total
    total = @total.to_f - 20
    discount = @discount.to_f / 100
    reduced = total * discount
    puts "discount #{reduced}"
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
    list = []
    @items.each do |key, data|
      quantity = data[1]
      list.fill(key, list.size, quantity)
    end
    list
  end
  
  def void_last_transaction
  end
end
