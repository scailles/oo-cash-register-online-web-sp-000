class CashRegister
  
attr_accessor :total, :discount, :price, :item
attr_reader :title
  
  
  
  def initialize(discount = 0)
    @total= 0
    @discount= discount
    @items = []
  end
  
  
  def add_item(title, price, quantity= 1)
    @title = title
    @total += (price * quantity)
    @last_transaction = (price * quantity)
    i = 0
    until i == quantity do 
      @items << title
      i += 1
    end

  end
  
  
  def apply_discount
    if @discount > 0
     @discount = @discount/100.to_f
     @total = @total - (@total * (@discount)).to_i
     return "After the discount, the total comes to $#{@total}."
     
    else
      "There is no discount to apply."
    end
  end
  
  
  def items
    @items
  end
  
  def void_last_transaction
    @total -= @last_transaction
  end
  
  
  
end