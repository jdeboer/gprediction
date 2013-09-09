\name{GpDelete}
\alias{GpDelete}
\title{GpDelete}
\usage{
  GpDelete(model_id, project, oauth)
}
\arguments{
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
  Delete a trained model.
}
\references{
  Trainedmodels: delete
  \url{https://developers.google.com/prediction/docs/reference/v1.6/trainedmodels/delete}
}

