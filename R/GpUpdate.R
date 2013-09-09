#' @include GpApiRequest.R
NULL

#' GpUpdate
#' 
#' Add new data to a trained model.
#' 
#' @references Trainedmodels: update 
#'   \url{https://developers.google.com/prediction/docs/reference/v1.6/trainedmodels/update}
#'   
#' @param output The generic output value - could be regression or class label.
#' @param csv_instance The input features for this instance.
#' @param model_id The unique name for the predictive model.
#' @param project The project associated with the model.
#' @param oauth The httr OAuth2.0 token reference class object to use for 
#'   authentication.
#' @return JSON response from the Google Prediction API converted into an R 
#'   List.
#' @export
GpUpdate <- function(output, csv_instance, model_id, project, oauth) {
  GpApiRequest(
    req_type = "PUT",
    oauth = oauth,
    project = project,
    body_list = list(
      output = output,
      csvInstance = csv_instance
    ),
    model_id = model_id
  )
}
