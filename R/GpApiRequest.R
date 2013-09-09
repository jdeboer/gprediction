#' GpApiRequest
#' 
#' Perform an Google Prediction API request and return the results
#' 
#' Construct and perform an HTTP request to the Google Prediction API. Transform
#' the JSON output into an R list.
#' 
#' @param req_type Character string specifying the type of http request to
#'   perform: "GET", "POST", "PUT", or "DELETE".
#' @param oauth The httr OAuth2.0 token reference class object to use for
#'   authentication.
#' @param project Character string. The name of the Google APIs project that the
#'   oauth token belong to.
#' @param body_list optional An R list object containing the name value pairs
#'   for the body of the request, where applicable. This list is coverted into
#'   JSON by the GpApiRequest function.
#' @param model_id optional Character string. The ID of the Google Prediction
#'   Model, where applicable to the request.
#' @param method optional Character string. The Google Predication API method to
#'   perform, where not implied by req_type.
#' @param model_type optional Character string. The type of model to use, only
#'   applies to request to perform a prediction. Possible values include
GpApiRequest <- function(req_type, oauth, project, body_list = NULL, model_id = NULL, method = NULL, model_type = "trainedmodels") {
  stopifnot(
    req_type %in% c("GET", "POST", "PUT", "DELETE")
  )
  url_vector <- c(base_url, "projects", project, model_type, model_id, method)
  url <- paste(url_vector, collapse = "/")
  config <- add_headers(
    Authorization = paste("Bearer", oauth$getAccessToken()$access_token),
    `Content-Type` = "application/json"
  )
  args <- list(url = url, config = config)
  if(is.null(body_list)) {
    body <- NULL
  } else {
    body <- toJSON(
      body_list,
      pretty = TRUE, asIs = TRUE
    )
    args <- c(args, list(body = body))
  }
  response <- do.call(req_type, args)
  content(response)
}
