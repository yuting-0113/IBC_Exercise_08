#Exercise 08:
#Question1:
#Load the file into score dataframe:
score <- read.table(file= "UWvMSU_1-22-13.txt", header = TRUE)


#create a matrix to store the culmulative scores for UW and MSU:
newscore <-  matrix(nrow = nrow(score)+1, ncol = 3)
colnames(newscore) <- c("time","UWscore","MSUscore")  # name the each column;
# when time is 0, UWscore =0 and MSUscore=0;
newscore[1,1] <- 0   
newscore[1,2] <- 0
newscore[1,3] <- 0

#load the time column of score into newscore:
for (i in 1:nrow(score)){
  newscore[i+1,1] <- score[i,1]  
}

# Load the cumulative scores into newscore:
for (i in 2: nrow(newscore)){
  if (score$team[i-1] == "UW"){      #if UW is scored, UWscore column add that score and MSUscore column add 0;
    newscore[i,2] <- newscore[i-1,2] + score[i-1,3]  
    newscore[i,3] <- newscore[i-1,3] + 0
  }else {                                              #if MSU is scored, MSUscore column add that score and UWscore column add 0;
    newscore[i,3] <- newscore[i-1,3] + score[i-1,3]
    newscore[i,2] <- newscore[i-1,2] + 0
  }
}

#Generate the plot for each group:
plot(newscore[,1],newscore[,2], type="l", xlab = "Time", ylab = "Score", col ='red')   # plot UW cumulative scores
lines(newscore[,1],newscore[,3], col = 'blue')   #add a second line for MSU
# Add a legend
legend('topleft', legend=c("UW", "MSU"), col=c("red", "blue"), lwd = 1)




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
