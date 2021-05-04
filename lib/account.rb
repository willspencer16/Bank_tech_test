class Account
    attr_reader :balance, :history

    def initialize
        @balance = 0
        @date = Time.new
        @history = []
    end

    def deposit(amount)
        @balance += amount
        @history << {:date => @date.strftime("%d/%m/%Y"), :credit => amount}
    end

    def withdraw(amount)
        @balance -= amount
        @history << {:date => @date.strftime("%d/%m/%Y"), :debit => amount}
    end
end