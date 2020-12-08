# Week 3

### Weekly Goals

| Goal | Detail | Progress Measure | Exercises | Goal met? | Evidence |
| ------ | ------ | ------ | ------ | ------ | ------ | 
| **Build a simple web app** | | |  |  |  |
| **Follow an effective debugging process for web applications** |  |  |  | | 
| **Explain the basics of how the web works (e.g. request/response, HTTP, HTML, CSS)** |  |  |  |  | 
| **Explain the MVC pattern** | |  | Not started  |  | 
| **Afternoon challenge** |   |  |  | Not started |  |
| **Attend the progress workshop** | Record the session and get coach feedback |  |  | | 
| **Weekend Challenge** |   |  | | Not started |  |
| **Blogging** | Write a blog post about this week | Write and post the blog on Medium | | Not started| post |

### Coach feedback on weekend challenge ([takeaway challenge](https://github.com/Aracho1/takeaway-challenge))
```
- Really great readme, made it super clear what was implemented and how it’s used
- Nice work on implementing Twilio! A way to tidy this up a bit would be to implement it within its own class. You could do some of the set-up in initialise (like creating the client), define your constants, and then a method for sending.
- Another unit test for Restaurant could be useful in ensuring the name and price of a dish exists and in the expected format. Your test it 'prints out the list of dishes’ do does test that the method exists, but it doesn’t test that it actually prints out the list of dishes. You can run a test with rspec to check the output matches what you expect (and on that note, maybe printing it as a formatted string instead of just a hash)
- The way you are calling restaurant from Takeaway is correct. If I had one suggestion, it’s that the responsibilities of both methods in Restaurant might not belong together. One is the menu and one is a formatting method - you might want to change the menu in the future, but want the user interface (print_menu) to stay the same, so it’s easier to separate them for this reason.
```

## Daily goals

#### Monday 7th December
- GOAL: Get a broad understanding of the concepts that will be covered this week (HTTP, server, Sinatra)
- PLAN: Look through the practicals and Google concepts. Work on the pair programming challenge in the afternoon
- EVIDENCE: Write notes
- Others: get coach feedback on weekend challenge

Week Kick off - Tips from Eoin
- Keep track of progress
- Guide to self-directed learning [post](https://blog.makersacademy.com/eds-guide-to-self-directed-learning-20a9022e418c)
- Stop comparing yourself [post](https://blog.makersacademy.com/3-ways-to-stop-comparing-yourself-ff518bd71171)
- Learning to Learn [post](https://sjmog.github.io/posts/491_learning_to_learn_1/)

Google [doc](https://docs.google.com/document/d/1INpukB1ObjJlHbEAFqaoYuPEE9WrXragvsc3JcVq_9M/edit) summarising notes on intro to web

## Reflection

### Question 1

*Did you meet all of your goals to the standard you set at the start of the week?*

### Question 2

*What would you change/improve moving forward?*
