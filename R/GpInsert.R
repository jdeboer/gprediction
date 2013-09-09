#' @include GpApiRequest.R
NULL

#' GpInsert
#' 
#' Train a Prediction API model.
#' 
#' @references Trainedmodels: insert 
#'   \url{https://developers.google.com/prediction/docs/reference/v1.6/trainedmodels/insert}
#'   
#' @param model_id The unique name for the predictive model.
#' @param project The project associated with the model.
#' @param oauth The httr OAuth2.0 token reference class object to use for 
#'   authentication.
#' @param source_model optional The Id of the model to be copied over.
#' @param storage_location optional Google storage location of the training data
#'   file.
#' @param storage_pmml_location optional Google storage location of the 
#'   preprocessing pmml file.
#' @param storage_pmml_model_location optional Google storage location of the 
#'   pmml model file.
#' @param model_type optional Type of predictive model (CLASSIFICATION or 
#'   REGRESSION)
#' @param training_instances optional List of outputs and csvInstances to train 
#'   model on. An output is a string with the generic output value - could be 
#'   regression or class label. A csvInstance is the input features for that 
#'   instance.
#' @param utility optional A class weighting function, which allows the 
#'   importance weights for class labels to be specified (Categorical models 
#'   only). A list of numeric keys (double)
#' @return JSON response from the Google Prediction API converted into an R 
#'   List.
#' @export
GpInsert <- function(
  model_id, project, oauth,
  source_model = NULL,
  storage_location = NULL, 
  storage_pmml_location = NULL, storage_pmml_model_location = NULL,
  model_type = NULL,
  training_instances = NULL,
  utility = NULL
) {
  GpApiRequest(
    req_type = "POST",
    oauth = oauth,
    project = project,
    body_list = list(
      id = model_id,
      sourceModel = source_model,
      storageDataLocation = storage_location,
      storagePMMLLocation = storage_pmml_location,
      storagePMMLModelLocation = storage_pmml_model_location,
      modelType = model_type,
      trainingInstances = training_instances,
      utility = utility
    )
  )
}
