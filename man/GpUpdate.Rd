\name{GpUpdate}
\alias{GpUpdate}
\title{GpUpdate}
\usage{
  GpUpdate(output, csv_instance, model_id, project, oauth)
}
\arguments{
  \item{output}{The generic output value - could be
  regression or class label.}

  \item{csv_instance}{The input features for this
  instance.}

  \item{model_id}{The unique name for the predictive
  model.}

  \item{project}{The project associated with the model.}

  \item{oauth}{The httr OAuth2.0 token reference class
  object to use for authentication.}
}
\value{
  JSON response from the Google Prediction API converted
  into an R List.
}
\description{
  Add new data to a trained model.
}
\references{
  Trainedmodels: update
  \url{https://developers.google.com/prediction/docs/reference/v1.6/trainedmodels/update}
}

