\name{GpApiRequest}
\alias{GpApiRequest}
\title{GpApiRequest}
\usage{
  GpApiRequest(req_type, oauth, project, body_list = NULL,
    model_id = NULL, method = NULL,
    model_type = "trainedmodels")
}
\arguments{
  \item{req_type}{Character string specifying the type of
  http request to perform: "GET", "POST", "PUT", or
  "DELETE".}

  \item{oauth}{The httr OAuth2.0 token reference class
  object to use for authentication.}

  \item{project}{Character string. The name of the Google
  APIs project that the oauth token belong to.}

  \item{body_list}{optional An R list object containing the
  name value pairs for the body of the request, where
  applicable. This list is coverted into JSON by the
  GpApiRequest function.}

  \item{model_id}{optional Character string. The ID of the
  Google Prediction Model, where applicable to the
  request.}

  \item{method}{optional Character string. The Google
  Predication API method to perform, where not implied by
  req_type.}

  \item{model_type}{optional Character string. The type of
  model to use, only applies to request to perform a
  prediction. Possible values include}
}
\description{
  Perform an Google Prediction API request and return the
  results
}
\details{
  Construct and perform an HTTP request to the Google
  Prediction API. Transform the JSON output into an R list.
}

