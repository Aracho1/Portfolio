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

### IP vs TCP
The TCP/IP relationship is similar to sending someone a message written on a puzzle through the mail. The message is written down and the puzzle is broken into pieces. Each piece then can travel through a different postal route, some of which take longer than others. When the puzzle pieces arrive after traversing their different paths, the pieces may be out of order. The Internet Protocol makes sure the pieces arrive at their destination address. The TCP protocol can be thought of as the puzzle assembler on the other side who puts the pieces together in the right order, asks for missing pieces to be resent, and lets the sender know the puzzle has been received. TCP maintains the connection with the sender from before the first puzzle piece is sent to after the final piece is sent.

IP is a connectionless protocol, and the target does not send an acknowledgement back to the source. That’s where TCP come in. TCP is used in conjunction with IP in order to maintain a connection between the sender and the target and to ensure packet order.

[SOURCE](https://www.cloudflare.com/learning/ddos/glossary/tcp-ip/)

### Web Sockets vs HTTP
“WebSockets”  allows real-time interactive communication between the client browser and a server. It uses a completely different protocol that allows bidirectional data flow, making it unique against HTTP.

HTTP: you to constantly ask the server if there are new messages in order to receive them. Web Sockets on the other hand don’t need you to send a request in order to respond. They allow bidirectional data flow so you just have to listen for any data.

[Source](https://medium.com/@td0m/what-are-web-sockets-what-about-rest-apis-b9c15fd72aac)


## Reflection

### Question 1

*Did you meet all of your goals to the standard you set at the start of the week?*

### Question 2

*What would you change/improve moving forward?*
