# Tech Test

The tech test is a programming exercise to evaluate the candidate’s technical skills and approach to software development. The candidate is expected to produce a solution in code that demonstrates they understand how to solve the problem using clear concise code.

When completing the technical test please do:

* Include instructions on how to run the code
* Keep it simple
* Include instructions on how to run the code
* Ask any questions by emailing the above address
* Use any programming language to solve the problem

Please **don’t**:

* Build a UI - the focus of the test is on the technical solution and not the interface
* Spend more than 2 hours - the important thing is that we understand your approach and way of thinking, it’s enough to demonstrate you could complete the task if you spent more time
* Feel the need to cover every edge case
* Write more than 200-300 lines of code! It is possible to produce quite lean solutions

## The Oyster Card Problem

You are required to model the following fare card system which is a limited version of London’s Oyster card system. At the end of the test, you should be able to demonstrate a user loading a card with £30, and taking the following trips, and then viewing the balance.

* Tube Holborn to Earl’s Court
* 328 bus from Earl’s Court to Chelsea
* Tube Earl’s court to Hammersmith

### Operation

When the user passes through the inward barrier at the station, their oyster card is charged the maximum fare.

When they pass out of the barrier at the exit station, the fare is calculated and the maximum fare transaction removed and replaced with the real transaction (in this way, if the user doesn’t swipe out, they are charged the maximum fare).

The zones are sequential, you can't go from zone 1 to zone 3 without passing through zone 2.

All bus journeys are charged at the same price.

The system should favour the customer where more than one fare is possible for a given journey. E.g. Holburn to Earl’s Court is charged at £2.50.
For the purposes of this test use the following data:


### Stations and zones:

![Stations And Zones](stations_and_zones.png)

### Fares:

![Fares](fares.png)

The maximum possible fare is therefore £3.20.
\
