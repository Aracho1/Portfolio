## rspec methods - notes

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
