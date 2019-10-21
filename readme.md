### Bank

## A program to keep track of banking account transactions

# To run:
- Create instance of the Bank class
```
i.e. bank = Bank.new
=> #<Bank:0x00007fadf2087e18 @transactions=[], @balance=0> 
```

- call deposit with amount (int) and date(string) arguments on bank instance to deposit
```
bank.deposit(1000,"11/11/2011")
=> [{:date=>"11/11/2011", :credit=>1000, :debit=>0, :balance=>1000}]
```

- call withdraw with amount (int) and date(string) arguments on bank instance to withdraw
```
bank.withdraw(100,"12/11/2011")
=> [{:date=>"11/11/2011", :credit=>1000, :debit=>0, :balance=>1000}, {:date=>"12/11/2011", :credit=>0, :debit=>100, :balance=>900}] 
```

- call get_balance on the bank instance to get the current balance 
```
bank.get_balance
=> 900 
```

- call print_transactions on the bank instance to print into console bank transactions
```
bank.print_transactions
=> "date || credit || debit || balance\n12/11/2011 ||  || 100.00 || 900.00\n11/11/2011 || 1000.00 ||  || 1000.00\n" 

date || credit || debit || balance
12/11/2011 ||  || 100.00 || 900.00
11/11/2011 || 1000.00 ||  || 1000.00
```


### Acceptance Criteria

Given a client makes a deposit of 1000 on 10-01-2012
And a deposit of 2000 on 13-01-2012
And a withdrawal of 500 on 14-01-2012
When she prints her bank statement
Then she would see

date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00