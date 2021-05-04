require 'account.rb'

describe Account do
    context 'balance' do
        it 'starts as zero' do
            expect(subject.balance).to eq(0)
        end

        it 'can be topped up when user makes a deposit' do
            subject.deposit(100)
            expect(subject.balance).to eq(100)
        end
    end
end