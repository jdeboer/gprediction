GpList <- function(project, oauth) {
  GpApiRequest(
    req_type = "GET",
    oauth = oauth,
    project = project,
    method = "list"
  )
}
