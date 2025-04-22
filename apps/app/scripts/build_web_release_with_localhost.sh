#!/bin/sh
# Run sudo chmod 755 before use.


echo "Flutter Build Web Release..."
flutter build web --release --dart-define=flavor=prod --web-renderer html -t lib/main_prod.dart
./scripts/run_web_localhost.sh