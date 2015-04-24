gprediction
===========

Google Prediction API client for R

To help you with getting started:

Firstly have a look through the Google Prediction API documentation on Google's developer site to learn about the concepts for using Google Prediction, including setting up a project in Google's Developers API console and billing for Google Storage where the training data is kept.

You will need to create an authentication token using the GetAuthToken function provided by the gprediction R package. The function returns an OUATH2.0 token object which you will later need for interacting with the prediction API in R, so remember to keep the returned token in your R workspace.

This function takes a few optional parameters, including a filename for where to save the token (it saves the token to your documents folder by default), also the client ID and associated client secret used for authentication with your Google APIs project.

The client ID and client secret are obtained from the Google APIs console for your project. If you do not provide the client ID and secret via the functions arguments, then the GetAuthToken function will look for these values in your environment variables, similar to how the ganalytics package does.

Once you have your authentication token, you can use the other gprediction functions to interact with Google's Prediction API within R. The auth token is a required argument for these functions.

The basic steps are:
1. Authenticate (as described above)
2. Upload your training dataset
3. Train your model using your training dataset
4. Check the status of your training model
5. Perform predictions using your model
6. Upload your model with new training data

For step 2 above, at present I would recommend uploading your initial training dataset via the Google Storage console manually. This is relatively easy to do and just requires you to add your CSV file to your Google Storage folder via your web browser. You may like to check out R packages for programmatically working with Google Storage, if that is of interest to you.

Steps 3 to 6 above are all performed as simple one line commands with the gprediction API. There is an associated gprediction function for each of these steps.

I welcome your input to improve the package and make it easier to pick up for new users.
