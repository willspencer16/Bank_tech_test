# frozen_string_literal: true

require 'account'
require './web_helper'

describe Account do
  context 'balance' do
    it 'starts as zero' do
      expect(subject.balance).to eq(0)
    end

    context 'is changed when' do
      it 'user makes a deposit' do
        subject.deposit(100)
        expect(subject.balance).to eq(100)
      end

      it 'user makes a withdrawal' do
        subject.deposit(100)
        subject.withdraw(50)
        expect(subject.balance).to eq(50)
      end
    end
  end

  context 'history' do
    context 'has dates when' do
      it 'user makes a deposit' do
        subject.deposit(100)
        expect(subject.history[0][:date]).to eq(date)
      end

      it 'user makes a withdrawal' do
        subject.deposit(100)
        subject.withdraw(50)
        expect(subject.history[0][:date]).to eq(date)
      end
    end

    context 'includes' do
      it 'the credit amount to two decimal places when a user makes a deposit' do
        subject.deposit(100)
        expect(subject.history[0][:credit]).to eq('100.00')
      end

      it 'the debit amount to two decimal places when a user makes a withdrawal' do
        subject.deposit(100)
        subject.withdraw(50)
        expect(subject.history[1][:debit]).to eq('50.00')
      end

      it 'the balance at the time of transaction two decimal places' do
        subject.deposit(100)
        subject.withdraw(50)
        expect(subject.history[0][:balance]).to eq('100.00')
        expect(subject.history[1][:balance]).to eq('50.00')
      end
    end
  end

  context 'statement' do
    it 'prints date and amount credited' do
      subject.deposit(100)
      expect { subject.statement }.to output("#{table_header}\n#{date} || 100.00 ||  || 100.00\n").to_stdout
    end

    it 'prints date and amount debited' do
      subject.deposit(100)
      subject.withdraw(50)
      expect do
        subject.statement
      end.to output("#{table_header}\n#{date} || 100.00 ||  || 100.00\n#{date} ||  || 50.00 || 50.00\n").to_stdout
    end
  end
end
