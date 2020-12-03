# Week 2

### Weekly Goals

| Goal | Detail | Progress Measure | Exercises | Goal met? | Evidence |
| ------ | ------ | ------ | ------ | ------ | ------ | 
| **Unit testing** | Learn how to write isolated unit tests | Complete related exercises. Get coach feedback | (1)[Testing OO Relationships using Mocking](https://github.com/makersacademy/skills-workshops/blob/master/practicals/object_oriented_design/testing_relationships.md) (2)[Dependency Injection](https://github.com/makersacademy/skills-workshops/blob/master/practicals/object_oriented_design/dependency_injection.md)    (3)[Testing behaviour over testing state](https://github.com/makersacademy/skills-workshops/blob/master/practicals/testing/behaviour_not_state.md) | In progress | In progress
| **Process Workshop** | Attend my first process workshop | Be able to structure and demonstrate process  | Complete a code kata | Yes! | [my first process workshop](https://github.com/Aracho1/Portfolio/tree/main/process_workshops)
| **Oystercard challenge** | Work on pair programming challenge | Meet challenge requirements | Using mock, double | In progress | repo
| **Weekend Challenge** | Work on the weekend challenge  | Complete the project with high quality code | - | Not yet started| repo |
| **Blogging** | Write a blog post about this week | Write and post the blog on Medium | Potential themes: TDD, process workshop, rspec... | Not yet started | post |

### Coach feedback on weekend challenge ([airport challenge](https://github.com/Aracho1/airport_challenge))

```
Overall, this is a really good airport challenge. You did many things well:

- Adding feature tests
- Good separation of classes
- Really good organisation of tests and bearing reusability in mind

Things to look at to improve (goals for the week):
- Write Unit Tests that are isolated
- Testing Behaviour and not State
- Defining your public interface for each class and making private the elements that should be private
```

### Workshop on Domain model diagramming

Domain modelling [template](https://docs.google.com/document/d/1J1HhScM5-4rzqWL8SylgQBnl6fg6KPlFakflxbeNvsc/edit?usp=sharing)

1. Highlight nounes (classes) and actions (as opposed to 'verbs') e.g. "count how many students are signed in" as action

2. Investigate user stories: 
- nouns -> property or owner of property
- actions -> owned by?
- actions -> property it reads / changes

3. class diagrams: class(owners), properties(instance variables), actions(methods)

### Workshop on Emotional Intelligence
Ego, fear and self-protection are the common reasons people avoid getting feedback

To be a good feedback receiver:
- shift perspective: neutralise feedback. See it as information. I can choose how to respond to it.
- avoid 'wrong spotting': looking for wrong things in a given information / feedback

Framework for good feedback: Actionable, Specific and Kind.

### Women Who Code (WWC) Connect Forward Conference: December 3-4, 2020, Online
#### Talk: Job Interviewing: Pandemic Challenge Mode
Speaker: @stonecoldkilzer

Get used to rejection: it isn't personal

Seniors get rejected at all phases: screening, intro, tech evaluation...

Reasons: found someone cheaper / experienced, situation changed, timing, flawed interview process...

```
Rejection is an opinion: rejection is an opinion of the rejector. It is heavilty influenced by historical context. there is no universal rejection or acceptance
- jia jiang, rejection proof
```
Set boundaries: say no to different leadership style, hostile interviewer, lowering salary

Spend more time studying for the jobs that excites you

The speaker spent 70 hours (30%) on take-home projects, only one of them turned to a job

Should I do project based interviews? Consider if you can learn the project e.g. new tool

Find a way to survive: Be patient and tough. Some day this will be useful to you.e.g. practise mindfulness, get enough sleep, send yourself a postcard (encourage yourself).

course: science of welling-being from yale university 

leverage WWC: SLACK #Interview-prep 

**start journaling about different scenarios**

Talk about your successes and challenges e.g. when I was working in a team

Practice data structures e.g. HackerRank

Be able to trace code, talk through the code 


### Knowledge Snippets 
#### RSpec allow/expect vs. expect/and_return
Allow makes a stub while expect makes a mock. That is allow allows an object to return X instead of whatever it would return unstubbed, and expect is an allow plus an expectation of some state or event. 
```
allow(Foo).to receive(:bar).with(baz).and_return(foobar_result)
```
you're telling the spec environment to modify Foo to return foobar_result when it receives :bar with baz. But when you write
```
expect(Foo).to receive(:bar).with(baz).and_return(foobar_result) 
```
you're doing the same, plus telling the spec to fail unless Foo receives :bar with baz.
- [stack overflow article](https://stackoverflow.com/questions/28006913/rspec-allow-expect-vs-just-expect-and-return) 
- [mocks aren't stubs](https://martinfowler.com/articles/mocksArentStubs.html)


