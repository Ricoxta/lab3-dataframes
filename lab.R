### -------------------- Lab 3 --------------------
### This lab is designed to prepare you for PS3
library(stringr)
## Create a vector of the number of points the Seahawks scored in the
## first (at least) 5 games
## Hint: google "Seahawks scores", or check the football database:
## http://www.footballdb.com/teams/nfl/seattle-seahawks/results
## here 'Final' displays scores
## Use an appropriate variable name for the scores
## 
## Hint: feel free to invent if you cannot figure this out
seahawks_scores <- c(17, 7, 23, 48, 32)

## Create a vector of the number of points the opponent
## scored against Seahawks in the first 5 games
## use an appropriate variable name
opponent_scores <- c(16, 27, 27, 45, 39)

## Combine your two vectors into a dataframe
game_scores <- data.frame(seahawks_scores, opponent_scores)

## Create a new column "diff" that is the difference in points
## (in favor of Hawks)
game_scores$diff <- seahawks_scores - opponent_scores
game_scores

## Create a new column "won" which is TRUE if the Seahawks won,
## ie if Seahawks scored more than the opponent scored against them
game_scores$won <- game_scores$diff > 0
game_scores

## Create a vector of the opponents name (such as "Denver Broncos")
opponent_names <- c("Denver Broncos", "San Francisco 49ers", "Atlanta Falcons", "Detroit Lions", "New Orleans Saints")


## Add the vector of opponents into the data frame
game_scores$opponent_names <- opponent_names
game_scores

## Compute the average score of Seahawks
savg <- mean(seahawks_scores)
savg

## Compute how many games did Seahawks won
## (use the 'won' variable to compute it)
sum(game_scores$won)


## What was the largest difference in scores (in favor of Seahawks)?
max(game_scores$diff)

## How many different opponents did Seahawks have in these games?
## Hint: use `unique()` and `length()`
unique(length(game_scores$opponent_names))

## Print the variable names in your data frame
names(game_scores)

## Write a loop over all variables in your data frame
## print the variable name inside the loop

for( i in names(game_scores)){
 print(i)
  
}

## Write a loop over all variables in your data frame
## print the variable name inside the loop,
## and true/false, depending if the variable is numeric
## check out 'is.numeric()'
for(col in names(game_scores)){
  if(is.numeric(game_scores[[col]])){
    cat(col, "\n")
  }
  
}



# is.numeric(results[[col]])
# for(col in names(results)){
#   
# if(is.numeric(results[[col]])){
#   cat(col, mean(results[[col]]), "\n")
#   
# }
# 
# }

## Write a loop over all variables in your data frame
## print the variable name inside the loop,
## and the average value of the variable
## if the variable is numeric
for(i in names(game_scores)){
if(is.numeric(game_scores[[i]])){
  cat(i, mean(game_scores[[i]]), "\n")
  
}
}


##
## HR data
## You are working in HR for a large firm with 100 employees.
## You are analyzing their salaries.

## Create a vector of 100 employees ("Employee 1", "Employee 2", ... "Employee
## 100")
## Hint: use 'paste()` or `str_c`
employees <- c(str_c("Employee ", 1:100))
employees

## Create a random vector of their 2021 salaries.
## Hint: you may use the runif function to create uniform random numbers,
## e.g. 'runif(100, 60, 120)' creates 100 random numbers between 60 and 120
salary21 <- runif(100, 50, 150)
salary21

## Create a random vector of 2022 salaries that are typically
## higher than the 2014 salaires (use runif again).
## For instance, if you create random numbers between 65 and 130, then 2022
## salaries tend to be larger than 2021 salaries.
salary22 <- runif(100, 80, 190)
salary22

## Create a data.frame 'salaries' by combining the vectors you just made
salaries <- data.frame(salary21, salary22)
salaries
## Create a column 'raise' that stores the size of the
## raise between 2021 and 2022


## Retrieve values from your data frame to answer the following questions:
##
## What was the 2015 salary of employee 57


## Now round the answer down to two digits after comma
## check out 'round()' function


## How many employees got a raise?


## What was the value of the highest raise?
## Round the number to two digits!


## What was the name of the employee who recieved the highest raise?


## What was the average salary increase?
## Round the number!


## For people who did not get a raise, how much money did they lose?
## Round the number!
