library(pryr)

# Load data
df <- mtcars

# S3 object from df
s3 <- list(name = row.names(df), hp = df$hp, mpg = df$mpg)


# S4 class
setClass("Car", 
         slots = list(name = "character",
                      hp = "numeric",
                      mpg = "numeric")
)


# S4 object of class "Car"
s4 <- new("Car", name = row.names(df), hp = df$hp, mpg = df$mpg)


# Apply generic functions to both objects
plot(s3$hp, s3$mpg, main = "Plot of S3")
plot(s4@hp, s4@mpg, main = "Plot of S4")

# Find object type of both objects
otype(s3)
otype(s4)


# Find type of both objects
typeof(s3)
typeof(s4)
