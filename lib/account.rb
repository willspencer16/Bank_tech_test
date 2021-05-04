class Account
    attr_reader :balance, :history

    def initialize
        @balance = 0
        @history = []
        @date = Time.new
    end

    def deposit(amount)
        @balance += amount
        @history << {:date => @date.strftime("%d/%m/%Y"), :amount => amount}
    end

    def withdraw(amount)
        @balance -= amount
        @history << {:date => @date.strftime("%d/%m/%Y"), :amount => amount}
    end
end