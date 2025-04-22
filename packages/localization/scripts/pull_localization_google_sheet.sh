#!/bin/bash

# shellcheck disable=SC2016
: '
Script for downloading Google Sheets data as a CSV and processing it with a Dart command.

This script fetches a specific sheet from a Google Sheet document and saves it to the local `i18n` directory.
The sheet ID and name are passed as parameters to make it flexible for different use cases.

Parameters:
    sheet_id (string): The ID of the Google Sheet to download data from.
    tab_id (string): The id of the sheet within the Google Sheet to download.

Steps:
1. The script validates that two parameters are passed: `sheet_id` and `tab_id`.
2. Constructs the Google Sheets export URL dynamically based on the parameters.
3. Downloads the CSV file corresponding to the sheet.
4. Verifies the download was successful.
5. Runs a Dart command (`dart run slang`) to process the downloaded data.

Requirements:
- `curl` must be installed on your system.
- `dart` must be installed and configured properly to execute the `dart run slang` command.

Usage:
    ./script_name.sh <sheet_id> <tab_id>

Example:
    ./script_name.sh 1punt36AG-IEM_K54Lc-ppagbn9M1KZ2bQ7VRnMCbiP4 strings.i18n

Output:
    A CSV file will be saved in the `i18n` directory with the same name as the `tab_id`.
    The Dart command `dart run slang` will be executed after a successful download.
'

# Check for required parameters
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <sheet_id> <tab_id>"
    exit 1
fi

sheet_id="$1"
tab_id="$2"

# Create i18n directory if it doesn't exist
mkdir -p i18n

# Construct download URL
download_url="https://docs.google.com/spreadsheets/d/${sheet_id}/export?format=csv&gid=${tab_id}"

echo "Download URL: ${download_url}"

# Download the sheet data
curl -L "${download_url}" -o "i18n/strings.i18n.csv"

# Check if download was successful
if [ ! -f "i18n/strings.i18n.csv" ]; then
    echo "Error: Failed to download sheet data"
    exit 1
fi

# Run dart command
dart run slang

echo "Export completed successfully"
