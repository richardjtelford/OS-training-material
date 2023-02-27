#' Messy data
#'
#' @param n number of rows 
#'
#' @return dataframe with n rows and messy columns 
#' @export
#'
#' @examples 
#' messy_data(n=20)
#' 
messy_data <- function(n = 20) {
  
  dates<-c("02/02/23","01-01-2023","2023/02/01",
           "2023-02-01","02-01-23")
  date <- sample(dates,n,replace=TRUE)
  sexes <- c("male", "female", "FEMALE", "Male", "Female", "MALE")
  sex <- sample(sexes, n, replace = TRUE)
  ages<-c("Adult", "Juvenile", "ADULT", "JUVENILE", "A", "J")
  age<-sample(ages,n, replace=TRUE)
  species_names <-c("Lagopus lagopus", "Lagopus muta", "Lagopas lagopus", "Logopus muta", "Lagopus matu")
  species<-sample(species_names, n, replace = TRUE)
  lat <- rnorm(n) + 9
  lon <- rnorm(n) + 63
  count<-as.integer(truncnorm::rtruncnorm(n,a=0, b=Inf, mean=10, sd=5))
  toy_data <- data.frame("date"=date,
                         "sex" = sex,
                         "age" = age,
                         "species" = species,
                         "lat" = lat,
                         "lon" = lon, 
                         "count"=count,
                         check.names = FALSE)
  toy_data
}


