\name{GpAnalyze}
\alias{GpAnalyse}
\alias{GpAnalyze}
\title{GpAnalyze}
\usage{
  GpAnalyze(model_id, project, oauth)
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
  Get analysis of the model and the data the model was
  trained on.
}
\references{
  Trainedmodels: analyze
  \url{https://developers.google.com/prediction/docs/reference/v1.6/trainedmodels/analyze}
}

