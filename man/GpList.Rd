\name{GpList}
\alias{GpList}
\title{GpList}
\usage{
  GpList(project, oauth, max_results = NULL,
    page_token = NULL)
}
\arguments{
  \item{project}{The project associated with the model.}

  \item{oauth}{The httr OAuth2.0 token reference class
  object to use for authentication.}

  \item{max_results}{optional unsigned integer: Maximum
  number of results to return. (Not yet implemented)}

  \item{page_token}{optional string: Pagination token. (Not
  yet implemented)}
}
\value{
  JSON response from the Google Prediction API converted
  into an R List.
}
\description{
  List available models.
}
\references{
  Trainedmodels: list
  \url{https://developers.google.com/prediction/docs/reference/v1.6/trainedmodels/list}
}

