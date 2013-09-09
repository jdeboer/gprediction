GpDelete <- function(model_id, project, oauth) {
  GpApiRequest(
    req_type = "DELETE",
    oauth = oauth,
    project = project,
    model_id = model_id
  )
}
