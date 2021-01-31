class CashRegister
attr_accessor :total, :discount, :items, :last_transaction


    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []

    end



    def add_item(title, price, quantity = 1)
        quantity.times do 
            @items << title
        end
        @last_transaction = @total
        @total += price * quantity
    end

    def apply_discount
        @total -= @total * @discount / 100 
        if @discount !=0
            return "After the discount, the total comes to $#{@total}."
        else 
         return "There is no discount to apply."
        end 
    end
        
   def void_last_transaction
        @total = @last_transaction

    end




end


