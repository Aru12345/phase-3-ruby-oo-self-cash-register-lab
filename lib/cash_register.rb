require 'pry'
class CashRegister
    attr_reader  :title,:price
    attr_accessor :total, :discount, :last_transaction,:items
    def initialize(discount=0)
        @total=0
        @discount=discount
        @items=[]

    end
 def add_item(title,price,quantity=1)
    quantity.times do
     self.items<<title 
    end
    self.last_transaction=price*quantity
    @title=title
    @price=price
    self.total+=price*quantity

    
    
 end
 def apply_discount
    if self.discount != 0
    discount_percent=(100.0-self.discount.to_f)/100
    self.total=(self.total*discount_percent).to_i
    
    "After the discount, the total comes to $#{total}."
    else
        "There is no discount to apply."
    
    end
 end
 
 def void_last_transaction
self.total-=self.last_transaction
 end
end

