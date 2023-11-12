#' get barking level
#'
#' @param dogData data on dogs
#' @param breed the breed of dog
#'
#' @return a tibble
#' @export
#'
#' @examples
#' getBark(dogData = dogData, "Border Collies")
getBark<-function(dogData, breed){
  dogData |>
    dplyr::filter(Breed=={{breed}}) |>
    dplyr::select(Barking.Level)

}
