class CashRegister
  attr_accessor :total, :discount
  
  def initialize(total = 0, discount = 20)
    @discount = discount
    @total = total
    @items = {}
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity = 1)
    price = price * quantity
    @total =  @total.to_f + price
    
    @items[title] = []
    @items[title] << price
    @items[title] << quantity
    # @items.fill(title, @items.size, quantity)
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
      list << key
    end
    list
  end
  
  def void_last_transaction
  end
end
