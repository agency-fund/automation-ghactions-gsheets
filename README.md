# automation-ghactions-gsheets

## Overview

- triggering event: GitHub Actions workflow. *Currently the workflow runs when there is a push to the repo's main branch.*
- resulting action: Use an R script to read and write a table in a Google Spreadsheet.
 
## Components

- this GitHub repository
- [the Google Spreadsheet](https://docs.google.com/spreadsheets/d/1iCEXU3265D2jNhbdVZMgL7t8o-vOdhOQY0T97v3vu4c)

## Replicating the system

1. Set up a Google Cloud project.
    1. Go to https://console.cloud.google.com/welcome. If necessary, agree to the terms and conditions.
    1. At the top of the page, click on the project selector.
    1. Select the Google Cloud project you want to use or click on new project.
    1. If you clicked on new project, give the project a name and click Create.
    1. On the main project page, click on APIs & Services, then Enable APIs and Services.
    1. Use the search box to find and enable the Google Drive API and the Google Sheets API.
    
1. Create credentials for the Google Cloud project.
    1. On the Google Cloud menu, click on APIs & Services, then Credentials.
    1. Click on Create Credentials, then Service account.
    1. Give the service account a name and possibly a description, then click Create and Continue, then Done.
    1. Under Service Accounts, click on the new service account, then Keys.
    1. Click Add Key, then Create new key, leave JSON selected, then click Create.
    1. Upload the downloaded JSON file to Google Drive for safekeeping.

1. Set up a new Google Spreadsheet.
    1. Log into the Google account that you want to be the owner of the new spreadsheet.
    1. Make a copy of the original spreadsheet.
    1. Copy the Google Cloud service account's email address, e.g., xxx@yyy.iam.gserviceaccount.com.
    1. On the new spreadsheet, click on Share, paste the email address into the text box, leave permission as Editor, and click Share.

1. Set up a new GitHub repository.
    1. Log into the GitHub account that you want to be the owner of the new repository.
    1. On this repository's main page, click "Use this template" to create a new repository.
    1. On the new repository's main page, click on the params folder, then on the params.yaml file.
    1. Click on the pencil symbol to edit the file.
    1. Copy the URL of the new spreadsheet, paste it as the file_url parameter, then click Commit changes.
    1. On the new repository's main page, click on Settings, then Secrets, then Actions.
    1. Click New repository secret.
    1. Enter GOOGLE_TOKEN in the Name box.
    1. Copy the content of the downloaded JSON file and paste it in the Secret box.
    1. Click Add secret.

## Modifying a replicated system

- Modify the code and params as desired, just make sure the .github/workflows/ci.yaml file runs the appropriate R script (currently code/update_sheet.R).
- To change the R package dependencies, change the "Imports:" section of the DESCRIPTION file.

## External documentation

- https://github.com/r-lib/actions
- https://gargle.r-lib.org/articles/non-interactive-auth.html
- https://googlesheets4.tidyverse.org
