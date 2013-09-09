GpGet <- function(model_id, project, oauth) {
  GpApiRequest(
    req_type = "GET",
    oauth = oauth,
    project = project,
    model_id = model_id
  )
}
