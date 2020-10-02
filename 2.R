# Decision Making/ conditional Statements in R
# If Statement
# Syntax: 
if (test_expression) {
  statement
}

x <- 5

if(x > 0){
  print("Positive number")
}


# If Else Statement
# syntax: 
if (test_expression) {
  statement1
} else {
  statement2
}

x <- -5
if(x > 0){
  print("Non-negative number")
} else {
  print("Negative number")
}

# Nested If Else Statement
if ( test_expression1) {
  statement1
} else if ( test_expression2) {
  statement2
} else if ( test_expression3) {
  statement3
} else  statement4

x <- -5
if (x < 0) {
  print("Negative number")
} else if (x > 0) {
  print("Positive number")
} else print("Zero")

# There is an easier way to use if...else statement specifically for vectors in R programming
# Syntax: ifelse(test_expression,x,y)
a = c(5,7,2,9)
ifelse(a %% 2 == 0,"even","odd")

# for more than 2 conditions
client <- c("private", "public", "other" , "private")

VAT <- ifelse(client =='private', 1.12, ifelse(client == 'public', 1.06, 1))
VAT