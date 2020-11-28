## Three Rules of TDD
1. Don't write any code unless it is to make a failing unit test pass
2. Don't write more of a unit test than is sufficient to fail
3. Don't write any more code than what is sufficient to make a test pass

## Benefits of TDD
- Improved code quality
- Instant feedback
- Creates detailed specification
- Reduces time on rework and debugging
- Reduces development time to market
- Forces you to write simple code 
- Easier to change code later

## Behaviour Driven Development
- BDD is a branch of TDD
- It uses human readable descriptions of software user requirements as the basis for tests. It involves the definition of entities, events and outputs that the user cares about and giving them names everybody agrees on.
- Consists of unit test, functional test and integration test

## Unit-Testing
- Unit testing tests codes in isolation from the rest of the application 
- Integration tests test whether units work together when they are composed to form a whole application e.g. API communication

## Arrange, Act and Assert (Unit Testing)
- **arrange** all the necessary preconditions and inputs
- **act** on the object or method under test
- **assert** that the expected results have occurred

## Rspec methods - notes

**let**(:bike) { Bike.new }
- let generates a method whose return value is memorised after the first call
- it runs across all 'it' blocks
- the state is reset for every 'it' block (which is different from  'before' which is loaded just once)
- [rspec documentation on let](https://www.rubydoc.info/github/rspec/rspec-core/RSpec%2FCore%2FMemoizedHelpers%2FClassMethods%3Alet)
- [Useful blog post on 'let'](https://medium.com/@tomkadwill/all-about-rspec-let-a3b642e08d39)

**subject**(:docking_station) { Docking_Station.new}
- rspec can call on methods without referring to it explicitly. If it's the first argument in the describe or context group, it creates an instance of the class and assigns it to the subject.
- Disadvantage when subject is used implicitly: harder to understand the object being tested

 **let vs. subject - differences?**
 - Conclusion: use 'let' in majority cases but do not overuse it.
 - excellent [stack overflow article](https://stackoverflow.com/questions/38437162/whats-the-difference-between-rspecs-subject-and-let-when-should-they-be-used)
 -  no big difference. subject does not have to be defined explicitly but the testing then may become harder to understand.

 **one-liner syntax**
- rspec supports one-liner syntex for setting an expectation on the subject. 
- it can be done in two ways: 
- (a) **is_expected**
- (b) **should**
- e.g. it { is.expected to_be empty }
- e.g. it { should be_empty }

**'raise_error'**
- a matcher that specifies a block of code should raise an error
- expect { block_of_code }.to raise_error
- expect { block_of_code }.to riase_error(ErrorType, "error message")
- [documentation](https://relishapp.com/rspec/rspec-expectations/docs/built-in-matchers/raise-error-matcher)

**change**
- a matcher to specify that a block of code changes some state
- expect { block_of_code }.to change(object, :attribute)
- expect { block_of_code }.to change{ object.state }

## Other notes
#### Diff. between return and output
- A **return** value is the data returned to the program by the execution of a method
- **puts** or **print** has a return value of **nil**

#### Side Effects
- When a program has an observable effect besides returning a value
- Side effects can make a program unpredictable
- Pure function: a function that always has the same result for the same input
- Functional programming is the process of building software by composing pure functions, avoiding shared state, mutable data and side effects. It is a different programming paradigm than OOP.