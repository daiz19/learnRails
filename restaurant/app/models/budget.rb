class Budget
    attr_accessor :people, :price

    def initialize(people, price)
        @people = people
        @price = price
    end

    def total
        (people * price) - discount
    end

    def discount
        price * (people / 10)
    end
end

