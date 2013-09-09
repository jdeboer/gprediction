#' @include GpApiRequest.R
NULL

#' GpList
#' 
#' List available models.
#' 
#' @references Trainedmodels: list 
#'   \url{https://developers.google.com/prediction/docs/reference/v1.6/trainedmodels/list}
#' 
#' @param project The project associated with the model.
#' @param oauth The httr OAuth2.0 token reference class object to use for 
#'   authentication.
#' @param max_results optional unsigned integer: Maximum number of results to return. (Not yet implemented)
#' @param page_token optional string: Pagination token. (Not yet implemented)
#' @return JSON response from the Google Prediction API converted into an R
#'   List.
#' @export
GpList <- function(project, oauth, max_results = NULL, page_token = NULL) {
  GpApiRequest(
    req_type = "GET",
    oauth = oauth,
    project = project,
    method = "list"
  )
}
