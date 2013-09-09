\name{GpPredict}
\alias{GpPredict}
\title{GpPredict}
\usage{
  GpPredict(csv_instance, model_id, project, oauth,
    hosted = FALSE)
}
\arguments{
  \item{output}{The generic output value - could be
  regression or class label.}

  \item{csv_instance}{Input to the model for a prediction.
  A list of input features, these can be strings or
  doubles.}

  \item{model_id}{The unique name for the predictive model
  (trained or hosted)}

  \item{project}{The project associated with the model.}

  \item{oauth}{The httr OAuth2.0 token reference class
  object to use for authentication.}
}
\value{
  JSON response from the Google Prediction API converted
  into an R List.
}
\description{
  Trained models: Submit model id and request a prediction.
  Hosted models: Submit input and request an output against
  a hosted model.
}
\references{
  Trainedmodels: predict
  \url{https://developers.google.com/prediction/docs/reference/v1.6/trainedmodels/predict}

  Hostedmodels: predict
  \url{https://developers.google.com/prediction/docs/reference/v1.6/hostedmodels/predict}
}

