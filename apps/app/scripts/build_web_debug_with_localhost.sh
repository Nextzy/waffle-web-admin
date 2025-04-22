#!/bin/sh
# Run sudo chmod 755 before use.


echo "Flutter Build Web Debug..."
flutter build web --profile --dart-define=flavor=dev --web-renderer html -t lib/main_dev.dart
./scripts/run_web_localhost.sh