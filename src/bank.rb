class Bank
  def initialize
    @transactions = []
    @balance = 0
  end

  def get_transactions
    @transactions
  end

  def get_balance
    @balance
  end

  def deposit(amount, date)
    @balance += amount
    @transactions.push(date: date, credit: amount, debit: 0, balance: @balance)
  end

  def withdraw(amount, date)
    @balance -= amount
    @transactions.push(date: date, credit: 0, debit: amount, balance: @balance)
  end

  def print_transactions
    transactions_output = "date || credit || debit || balance\n"
    @transactions.reverse.each do |transaction|
      transaction[:credit] == 0 ? transaction[:credit] = "" : transaction[:credit] = '%.2f' % transaction[:credit]
      transaction[:debit] == 0 ? transaction[:debit] = "" : transaction[:debit] = '%.2f' % transaction[:debit]
      transactions_output += "#{transaction[:date]} || #{transaction[:credit]} || #{transaction[:debit]} || #{'%.2f' % transaction[:balance]}\n"
    end
    puts transactions_output
    transactions_output
  end

end
