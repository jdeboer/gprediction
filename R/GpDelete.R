#' @include GpApiRequest.R
NULL

#' GpDelete
#' 
#' Delete a trained model.
#' 
#' @references Trainedmodels: delete 
#'   \url{https://developers.google.com/prediction/docs/reference/v1.6/trainedmodels/delete}
#' 
#' @param model_id The unique name for the predictive model.
#' @param project The project associated with the model.
#' @param oauth The httr OAuth2.0 token reference class object to use for 
#'   authentication.
#' @return JSON response from the Google Prediction API converted into an R
#'   List.
#' @export
GpDelete <- function(model_id, project, oauth) {
  GpApiRequest(
    req_type = "DELETE",
    oauth = oauth,
    project = project,
    model_id = model_id
  )
}
