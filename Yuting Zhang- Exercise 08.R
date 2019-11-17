#Exercise 08:
#Analysis of data surrounding sports teams has grown into a major business for the teams themselves and the media. One cool summary plot that media outlets generate to summarize a game, in this case basketball, is a line graph depicting the cumulative score for each team as a function of time in the game (see below):






#Question2: "guess my number":

#Generate a number from 1 to 100:
MyNumber <- sample(1:100, 1)   # a random selection from 1:100;

print("Guess a number between 0 and 100:")

while (TRUE) { 
  Guess <- readline(prompt="Guess: ")

 if (Guess == MyNumber){
    print("Correct!")
   break
 }
 else if (Guess < MyNumber){
   print("Higher")
  }
  else if(Guess > MyNumber){
    print("Lower")
 }

}
