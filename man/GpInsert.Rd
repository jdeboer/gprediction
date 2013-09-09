\name{GpInsert}
\alias{GpInsert}
\title{GpInsert}
\usage{
  GpInsert(model_id, project, oauth, source_model = NULL,
    storage_location = NULL, storage_pmml_location = NULL,
    storage_pmml_model_location = NULL, model_type = NULL,
    training_instances = NULL, utility = NULL)
}
\arguments{
  \item{model_id}{The unique name for the predictive
  model.}

  \item{project}{The project associated with the model.}

  \item{oauth}{The httr OAuth2.0 token reference class
  object to use for authentication.}

  \item{source_model}{optional The Id of the model to be
  copied over.}

  \item{storage_location}{optional Google storage location
  of the training data file.}

  \item{storage_pmml_location}{optional Google storage
  location of the preprocessing pmml file.}

  \item{storage_pmml_model_location}{optional Google
  storage location of the pmml model file.}

  \item{model_type}{optional Type of predictive model
  (CLASSIFICATION or REGRESSION)}

  \item{training_instances}{optional List of outputs and
  csvInstances to train model on. An output is a string
  with the generic output value - could be regression or
  class label. A csvInstance is the input features for that
  instance.}

  \item{utility}{optional A class weighting function, which
  allows the importance weights for class labels to be
  specified (Categorical models only). A list of numeric
  keys (double)}
}
\value{
  JSON response from the Google Prediction API converted
  into an R List.
}
\description{
  Train a Prediction API model.
}
\references{
  Trainedmodels: insert
  \url{https://developers.google.com/prediction/docs/reference/v1.6/trainedmodels/insert}
}

