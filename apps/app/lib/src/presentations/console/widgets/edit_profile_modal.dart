import 'package:change_application_name/application.dart';

class EditProfileModal extends StatelessWidget {
  EditProfileModal({
    super.key,
    required this.onTapUpdateProfile,
    required this.onTapChangePassword,
  });

  final Function(
    String firstName,
    String lastName,
    String email,
    String phone,
  ) onTapUpdateProfile;

  final Function(
    String oldPassword,
    String newPassword,
  ) onTapChangePassword;

  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final oldPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        padding: EdgeInsets.all(50),
        width: 800,
        height: 550,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              'User Information',
              textAlign: TextAlign.start,
              style:
                  AppTextStyleBuilder.ui.s14.colorPrimary.bold.build(context),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
                  AppImage(
                    width: 100,
                    height: 100,
                    path: null,
                  ),
                  Space.gap32,
                  Expanded(
                    child: Column(
                      children: [
                        AppTextField(
                          label: 'First Name',
                          controller: firstNameController,
                        ),
                        Space.gap20,
                        AppTextField(
                          label: 'Email',
                          controller: emailController,
                        ),
                      ],
                    ),
                  ),
                  Space.gap32,
                  Expanded(
                    child: Column(
                      children: [
                        AppTextField(
                          label: 'Last Name',
                          controller: lastNameController,
                        ),
                        Space.gap20,
                        AppTextField(
                          label: 'Phone',
                          controller: phoneController,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // AppButton(text: 'Cancel'),
                // Space.gap32,
                AppButton(
                  text: 'Save',
                  onPress: () => onTapUpdateProfile(
                    firstNameController.text,
                    lastNameController.text,
                    emailController.text,
                    phoneController.text,
                  ),
                ),
              ],
            ),
            Space.gap32,
            AppDivider(
              paddingStart: 50,
              paddingEnd: 50,
              color: Colors.black,
            ),
            Space.gap32,
            AppText(
              'Reset Password',
              textAlign: TextAlign.start,
              style:
                  AppTextStyleBuilder.ui.s14.colorPrimary.bold.build(context),
            ),
            Space.gap32,
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: AppTextField(
                    label: 'Old Password',
                    controller: oldPasswordController,
                  ),
                ),
                Space.gap20,
                Expanded(
                  child: AppTextField(
                    label: 'New Password',
                    controller: newPasswordController,
                  ),
                ),
                Space.gap20,
                AppButton(
                  text: 'Change Password',
                  onPress: () => onTapChangePassword(
                    oldPasswordController.text,
                    newPasswordController.text,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
