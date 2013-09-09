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
