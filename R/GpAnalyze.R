#' @include GpApiRequest.R
NULL

#' GpAnalyze
#' 
#' Get analysis of the model and the data the model was trained on.
#' 
#' @references Trainedmodels: analyze
#' \url{https://developers.google.com/prediction/docs/reference/v1.6/trainedmodels/analyze}
#' 
#' @param model_id The unique name for the predictive model.
#' @param project The project associated with the model.
#' @param oauth The httr OAuth2.0 token reference class object to use for
#'   authentication.
#' @return JSON response from the Google Prediction API converted into an R List.
#' @aliases GpAnalyse
#' @export
GpAnalyze <- function(model_id, project, oauth) {
  GpApiRequest(
    req_type = "GET",
    oauth = oauth,
    project = project,
    model_id = model_id,
    method = "analyze"
  )
}
