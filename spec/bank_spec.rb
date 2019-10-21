require './src/bank.rb'

describe Bank do
  describe '#get_balance' do
    it 'returns 0 for a new account' do
      expect(subject.get_balance).to eq(0)
    end
  end

  describe '#get_transactions' do
    it 'For a new account, prints empty transaction history' do
      expect(subject.get_transactions).to eq([])
    end
  end

  describe '#deposit' do
    it "add 1000 to balance upon a deposit of 1000" do
      subject.deposit(1000, '20/02/2012')
      expect(subject.get_balance).to eq(1000)
    end

    it "add deposit info to transactions as a hash" do
      subject.deposit(2000, '20/02/2012')
      deposit_hash = {date: '20/02/2012', credit: 2000, debit: 0, balance: 2000}
      expect(subject.get_transactions.first).to eq(deposit_hash)
    end
  end

  describe '#withdraw' do
    it "take 1000 from balance after a deposit of 1000" do
      subject.withdraw(1000, '14/02/2012')
      expect(subject.get_balance).to eq(-1000)
    end

    it "add withdraw info to transactions as a hash" do
      subject.withdraw(2000, '14/02/2012')
      withdraw_hash = {date: '14/02/2012', credit: 0, debit: 2000, balance: -2000}
      expect(subject.get_transactions.first).to eq(withdraw_hash)
    end
  end

  describe '#print_transactions' do
    it 'prints bank statement as per acceptance criteria' do
      subject.deposit(1000, '10/01/2012')
      subject.deposit(2000, '13/01/2012')
      subject.withdraw(500, '14/01/2012')
      output_string = "date || credit || debit || balance\n14/01/2012 ||  || 500.00 || 2500.00\n13/01/2012 || 2000.00 ||  || 3000.00\n10/01/2012 || 1000.00 ||  || 1000.00\n"
      expect(subject.print_transactions).to eq(output_string)
    end
  end



end