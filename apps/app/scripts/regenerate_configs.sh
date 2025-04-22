#!/bin/sh
# Run sudo chmod 755 restart_pub_get.sh before use.

echo "[Generate Configs]"
flutter clean
flutter pub get
flutter pub run flutter_flavorizr
flutter pub run flutter_native_splash:create --flavors dev,uat,prod
flutter pub run flutter_launcher_icons