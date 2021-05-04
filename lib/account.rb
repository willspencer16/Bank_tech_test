class Account
    attr_reader :balance, :history

    def initialize
        @balance = 0
        @date = Time.new
        @history = []
    end

    def deposit(amount)
        balance = @balance += amount
        @history << {:date => @date.strftime("%d/%m/%Y"), :credit => amount, :balance => balance}
    end

    def withdraw(amount)
        balance = @balance -= amount
        @history << {:date => @date.strftime("%d/%m/%Y"), :debit => amount, :balance => balance}
    end

    def statement
        puts "date || credit || debit || balance"
        @history.each do |input|
            puts "#{input[:date]} || #{input[:credit]} || #{input[:debit]} || #{input[:balance]}"
        end
    end
end