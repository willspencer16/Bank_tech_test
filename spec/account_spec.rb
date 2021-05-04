require 'account.rb'

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
end