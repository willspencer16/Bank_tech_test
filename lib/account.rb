class Account
    attr_reader :balance, :history

    def initialize
        @balance = 0
        @history = []
    end

    def deposit(amount)
        date = Time.new
        @balance += amount
        @history << {:date => date.strftime("%d/%m/%Y"), :amount => amount}
    end

    def withdraw(amount)
        date = Time.new
        @balance -= amount
        @history << {:date => date.strftime("%d/%m/%Y"), :amount => amount}
    end
end