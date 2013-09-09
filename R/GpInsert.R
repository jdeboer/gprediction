GpInsert <- function(
  model_id, project, oauth,
  source_model,
  storage_location, 
  storage_pmml_location, storage_pmml_model_location,
  model_type,
  training_instances,
  utility
) {
  GpApiRequest(
    req_type = "POST",
    oauth = oauth,
    project = project,
    body_list = list(
      id = model_id,
      sourceModel = source_model,
      storageDataLocation = storage_location,
      storagePMMLLocation = storage_pmml_location,
      storagePMMLModelLocation = storage_pmml_model_location,
      modelType = model_type,
      trainingInstances = training_instances,
      utility = utility
    )
  )
}
