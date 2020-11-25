# Objective: Imagine how to use a program without implementing the solution yet.

## Exercise 1
### Imagine how to use this brief:
As a student
So that I can remember people's names
I want an IRB application that stores the names of people I met

> remember("James")
=> "I will remember James!"
> show_names
=> [James]
> remember("Jessica")
=> "I will remember Jessica!"
> show_names
=> [James, Jessica]

## Exercise 2
### Imagine how to use this brief:
As a student
So that I can understand my recent motivation
I want an IRB application that stores my motivation ratings
And I want to see the average of my last 3 ratings
> track_motivation(5)
=> "Motivation stored!"
> show_motivations
=> [6,3,5]
> average_motivation
=> "Your average motivation in the last 3 days is 4.7."
