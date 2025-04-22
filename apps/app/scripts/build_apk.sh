#!/bin/bash

# Default values
PROJECT_NAME="mflow"
FLAVOR=""
BUILD_TYPE=""
OUTPUT_DIR=".apk/"

# Function to display usage
usage() {
    echo "Usage: $0 --flavor [uat|dev|prod] --build [release|debug] --output [directory_path]"
    echo
    echo "Parameters:"
    echo "  --flavor     Required. Build flavor (uat, dev, or prod)"
    echo "  --build Required. Build type (release or debug)"
    echo "  --output     Required. Output directory path"
    echo
    echo "Example:"
    echo "  $0 --flavor uat --build release --output ./builds"
    echo "  $0 --flavor dev --build debug --output ~/Downloads/flutter_builds"
    exit 1
}

# Parse parameters
while [[ "$#" -gt 0 ]]; do
    case $1 in
        --flavor) FLAVOR="$2"; shift ;;
        --build) BUILD_TYPE="$2"; shift ;;
        --output) OUTPUT_DIR="$2"; shift ;;
        *) echo "Unknown parameter: $1"; usage ;;
    esac
    shift
done

# Validate parameters
if [[ ! $FLAVOR =~ ^(uat|dev|prod)$ ]]; then
    echo "Error: Invalid or missing flavor. Must be uat, dev, or prod."
    usage
fi

if [[ ! $BUILD_TYPE =~ ^(release|debug)$ ]]; then
    echo "Error: Invalid or missing build type. Must be release or debug."
    usage
fi


# Get current date and time
DATE=$(date +"%Y-%m-%d")
TIME=$(date +"%H-%M")

# Get version code and build number from pubspec.yaml
# Note: You'll need to adjust the grep patterns based on your actual pubspec.yaml structure
VERSION=$(grep "version:" ./pubspec.yaml | awk '{print $2}')

# Create output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Define the custom APK name
CUSTOM_APK_NAME="[${DATE}|${TIME}]-${PROJECT_NAME}-${FLAVOR}-${BUILD_TYPE}-${VERSION}.apk"

# Build APK
flutter build apk \
    --${BUILD_TYPE} \
    --flavor ${FLAVOR} \
    --target lib/main_${FLAVOR}.dart

# Set default APK path
DEFAULT_PATH="./build/app/outputs/flutter-apk/app-${FLAVOR}-${BUILD_TYPE}.apk"

if [ -f "$DEFAULT_PATH" ]; then
    mv "$DEFAULT_PATH" "${OUTPUT_DIR}${CUSTOM_APK_NAME}"
    echo "🤖 APK built successfully and moved to: ${OUTPUT_DIR}${CUSTOM_APK_NAME}"
else
    echo "Error: APK not found at ${DEFAULT_PATH}"
    exit 1
fi