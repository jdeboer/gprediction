GpUpdate <- function(output, csv_instance, model_id, project, oauth) {
  GpApiRequest(
    req_type = "PUT",
    oauth = oauth,
    project = project,
    body_list = list(
      output = output,
      csvInstance = csv_instance
    ),
    model_id = model_id
  )
}
