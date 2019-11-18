#Exercise 08:
#Question1:
#Load the file into score dataframe:
score <- read.table(file= "UWvMSU_1-22-13.txt", header = TRUE)

#Generate a subset of each group:   
UWscore <- subset(score, team == "UW")   
UWscore <- UWscore[order(UWscore[,3]),]
MSUscore <- subset(score, team == "MSU")
MSUscore <- MSUscore[order(MSUscore[,3]),]


#Generate the cumulative score of each group:
Y_UWscore <- UWscore$time
Y_MSUscore <- MSUscore$time
#For UW:
for (i in 2: nrow(UWscore)){
  Y_UWscore[i] <- Y_UWscore[i-1] + UWscore$time[i]
}
#For MSU:
for (i in 2: nrow(MSUscore)){
  Y_MSUscore[i] <- Y_MSUscore[i-1] + MSUscore$time[i]
}

#Generate the plot for UW:
plot(1:nrow(UWscore),Y_UWscore, type="l")
lines(1:nrow(MSUscore),Y_MSUscore)

#How to change the x-axis?



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
