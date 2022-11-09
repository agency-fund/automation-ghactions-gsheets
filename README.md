# automation-ghactions-gsheets

## Overview

- triggering event: GitHub Actions workflow. *stuff.*
- resulting action: Read and write a table in a Google Spreadsheet. *stuff.*
 
## Components

- this GitHub repository
- [the Google Spreadsheet]()

## Replicating the system

1. Log into the Google account that you want to be the owner of the new spreadsheet.
1. Make a copy of the original spreadsheet.

1. Go to https://console.cloud.google.com/welcome. If necessary, agree to the terms and conditions.
1. At the top of the page, click on the project selector.
1. Select the Google Cloud project you want to use or click on new project.
1. If you clicked on new project, give the project a name and click Create.
1. On the main project page, click on APIs & Services, then Enable APIs and Services.
1. Use the search box to find and enable the Google Drive API and the Google Sheets API.
1. On the Google Cloud menu, click on APIs & Services, then Credentials.
1. Click on Create Credentials, then Service account.
1. Give the service account a name and possibly a description, then click Create and Continue, then Done.
1. Under Service Accounts, click on the new service account, then Keys.
1. Click Add Key, then Create new key, leave JSON selected, then click Create.
1. Upload the downloaded JSON file to Google Drive for safekeeping.
1. Copy the service account's email address, e.g., xxx@yyy.iam.gserviceaccount.com.
1. On the new Google Spreadsheet, click on Share, paste the email address into the text box, leave permission as Editor, and click Share.


1. Create a new GitHub repository.
    1. Log into the GitHub account that you want to be the owner of the new repository.
    1. On this repository's main page, click "Use this template" to create a new repository.

- add service account credentials as github repo secret
- update the file_url in params/params.yaml.

## Modifying a replicated system

- change R package dependencies in DESCRIPTION
- change the sheet
