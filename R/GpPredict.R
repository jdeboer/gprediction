#' @include GpApiRequest.R
NULL

#' GpPredict
#' 
#' Trained models: Submit model id and request a prediction.
#' Hosted models: Submit input and request an output against a hosted model.
#' 
#' @references Trainedmodels: predict 
#'   \url{https://developers.google.com/prediction/docs/reference/v1.6/trainedmodels/predict}
#' @references Hostedmodels: predict
#'   \url{https://developers.google.com/prediction/docs/reference/v1.6/hostedmodels/predict}
#'   
#' @param output The generic output value - could be regression or class label.
#' @param csv_instance Input to the model for a prediction. A list of input features, these can be strings or doubles.
#' @param model_id The unique name for the predictive model (trained or hosted)
#' @param project The project associated with the model.
#' @param oauth The httr OAuth2.0 token reference class object to use for 
#'   authentication.
#' @return JSON response from the Google Prediction API converted into an R 
#'   List.
#' @export
GpPredict <- function(csv_instance, model_id, project, oauth, hosted = FALSE) {
  GpApiRequest(
    req_type = "POST",
    oauth = oauth,
    project = project,
    body_list = list(
      input = list(
        csvInstance = csv_instance
      )
    ),
    model_id = model_id,
    method = "predict",
    model_type = ifelse(hosted == TRUE, "hostedmodels", "trainedmodels")
  )
}
