import 'package:design_system/lib.dart';

// ignore_for_file: non_constant_identifier_names
extension ThemeContextExtension on BuildContext {
  AppThemeData get theme => ThemeApplication.of(this);
}