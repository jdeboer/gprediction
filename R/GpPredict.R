GpPredict <- function(csv_instance, model_id, project, oauth, hosted = FALSE) {
  GpApiRequest(
    req_type = "POST",
    oauth = oauth,
    project = project,
    body_list = list(
      input = list(
        csvInstance = csv_instance
      )
    ),
    model_id = model_id,
    method = "predict",
    model_type = ifelse(hosted == TRUE, "hostedmodels", "trainedmodels")
  )
}
