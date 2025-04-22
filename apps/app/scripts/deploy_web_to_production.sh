#!/bin/sh
# Run sudo chmod 755 before use.

echo "🌏 Deploy Flutter Web to Production..."
echo "Do you want to deploy flutter web to Production?"
echo "Yes or No? (y/n): \c"
read answer

case ${answer:0:1} in
    y|Y )
        echo "Deploying to production..."
        peanut --branch gh-pages --release --web-renderer html --extra-args "--dart-define=FLUTTER_APP_FLAVOR=prod"
        git push origin gh-pages
        ;;
    n|N )
        echo "Deployment cancelled."
        exit 0
        ;;
    * )
        echo "Invalid input. Please answer yes or no."
        exit 1
        ;;
esac