import 'package:design_system/lib.dart';

class AvatarGroup extends AppStatelessWidget {
  const AvatarGroup({
    super.key,
    required this.avatarList,
    this.showMaxAvatar = 0,
  });

  final List<AppAvatar> avatarList;
  final int showMaxAvatar;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
