import 'package:change_application_name/application.dart';

class ProfileModal extends StatelessWidget {
  const ProfileModal({
    super.key,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
    this.photoUrl,
  });

  final String firstName;
  final String lastName;
  final String email;
  final String phone;
  final String? photoUrl;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.all(10),
        width: 550,
        height: 350,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(18),
              child: AppImage(
                width: 60,
                height: 60,
                path: photoUrl,
              ),
            ),
            ProfileContent(
              firstName: firstName,
              lastName: lastName,
              email: email,
              phone: phone,
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileContent extends StatelessWidget {
  const ProfileContent({
    super.key,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.phone,
  });

  final String firstName;
  final String lastName;
  final String email;
  final String phone;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: context.theme.color.bgInputShaded,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      'First Name',
                      style: AppTextStyleBuilder.header4.bold.build(context),
                    ),
                    Space.gap10,
                    AppText(
                      firstName,
                      style: AppTextStyleBuilder.header.build(context),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      'Last Name',
                      style: AppTextStyleBuilder.header4.bold.build(context),
                    ),
                    Space.gap10,
                    AppText(
                      lastName,
                      style: AppTextStyleBuilder.header.build(context),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Space.gap32,
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      'Email',
                      style: AppTextStyleBuilder.header4.bold.build(context),
                    ),
                    Space.gap10,
                    AppText(
                      email,
                      style: AppTextStyleBuilder.header.build(context),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText(
                      'Phone',
                      style: AppTextStyleBuilder.header4.bold.build(context),
                    ),
                    Space.gap10,
                    AppText(
                      phone,
                      style: AppTextStyleBuilder.header.build(context),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
