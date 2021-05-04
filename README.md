# Bank tech test

Week 10 of Makers, tech test.

This practice session is about producing the best code when there is a minimal time pressure.

Oppotunity to practice OO design and TDD skills.

## Specification

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

### Basic User Stories

```
As a user
I would like to have an account
So that I can store my money
```

```
As a user
I would like to be able to deposit money into my account
So that I can increase the money stored in my account
```

```
As a user
I would like to be able to withdraw from my account
So that spend my money
```

```
As a user
I would like to be able to see an account statement with dates
So that I can see how much money I have and when I deposited or withdrew money
```