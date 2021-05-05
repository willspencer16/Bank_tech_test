# frozen_string_literal: true

class Account
  attr_reader :balance, :history

  def initialize
    @balance = 0
    @date = (Time.new).strftime('%d/%m/%Y')
    @history = []
  end

  def deposit(amount)
    balance = @balance += amount
    @history << { date: @date, credit: format('%.2f', amount), balance: format('%.2f', balance) }
  end

  def withdraw(amount)
    balance = @balance -= amount
    @history << { date: @date, debit: format('%.2f', amount), balance: format('%.2f', balance) }
  end

  def statement
    puts table_header
    @history.each do |input|
      puts "#{input[:date]} || #{input[:credit]} || #{input[:debit]} || #{input[:balance]}"
    end
  end
end
