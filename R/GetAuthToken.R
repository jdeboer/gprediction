GetAuthToken <- function(file, appname, key = NULL, secret = NULL) {
  auth <- new_oauth(
    base_url = "https://accounts.google.com/o/oauth2",
    authorize = "auth",
    access = "token",
    scope = paste(
      "https://www.googleapis.com/auth/devstorage.read_only",
      "https://www.googleapis.com/auth/prediction"
    ),
    appname = appname,
    key = key,
    secret = secret,
    file = file
  )
}
