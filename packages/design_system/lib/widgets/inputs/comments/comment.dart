import 'package:design_system/design_system.dart';

class AppComment {
  AppComment(
      {required this.avatar,
      required this.name,
      required this.time,
      required this.text,
      required this.reaction,
      this.children});

  AppCircleAvatar avatar;
  String name;
  String time;
  String text;
  int reaction;
  List<AppComment>? children;
}
