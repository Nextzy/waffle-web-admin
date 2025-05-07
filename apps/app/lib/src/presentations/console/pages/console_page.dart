import 'package:change_application_name/application.dart';

enum ConsolePageEvent {
  showResult,
  updateProfileSuccess,
  resetPasswordSuccess,
}

@RoutePage()
class ConsolePage extends AppPage implements AutoRouteWrapper {
  const ConsolePage({super.key});

  @override
  State<ConsolePage> createState() => _ConsolePageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => ConsoleBloc(),
      child: this,
    );
  }
}

class _ConsolePageState
    extends AppPageBlocWidgetState<ConsolePage, ConsoleBloc, ConsoleEntity?> {
  void onListenerEvent(
    BuildContext context,
    Object event,
    Object? data,
  ) {
    switch (event) {
      case ConsolePageEvent.showResult:
        final resultMessage = data as String;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(resultMessage),
            duration: Duration(seconds: 5),
          ),
        );
      case ConsolePageEvent.updateProfileSuccess:
        print('updateProfileSuccess');

        _getProfile();
      case ConsolePageEvent.resetPasswordSuccess:
        print('resetPasswordSuccess');
    }
  }

  @override
  void initState() {
    super.initState();

    _getProfile();
  }

  @override
  Widget build(BuildContext context) {
    return buildScaffoldWithBloc(
        listenEvent: onListenerEvent,
        body: (context, state) {
          if (state.isLoading) return Center(child: AppCircularLoading());
          if (state.isFail) return AppEmpty();

          return _buildBody();
        });
  }

  Widget _buildBody() {
    return Container(
      color: context.theme.color.bg,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildAppSidebar(),
            Expanded(
              child: Column(
                children: [
                  _buildTopBar(),
                  Expanded(child: AutoRouter()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAppSidebar() {
    return Semantics(
      identifier: 'my-sidebar',
      child: AppSidebar(
        logo: Assets.logo.iconText.keyName,
        items: [
          AppSidebarSection(
            identifier: 'analytics-tab',
            icon: Assets.icon.atLight.keyName,
            title: 'Analytics',
            onPress: () {
              push(SettingRoute());
            },
          ),
          AppSidebarSection(
            identifier: 'campaigns-tab',
            icon: Assets.icon.bookOpenFilled.keyName,
            title: 'Campaigns',
            onPress: () {
              push(ProfileRoute());
            },
          ),
          AppSidebarSection(
            identifier: 'games-tab',
            icon: Assets.icon.fileTextFilled.keyName,
            title: 'Games',
            onPress: () {},
          ),
          AppSidebarSection(
            identifier: 'customers-tab',
            icon: Assets.icon.codeLight.keyName,
            title: 'Customers',
            onPress: () {},
          ),
          AppSidebarSection(
            identifier: 'consent-and-policy-tab',
            icon: Assets.icon.bellFilled.keyName,
            title: 'Consent and policy',
            onPress: () {},
          ),
          AppSidebarSection(
            identifier: 'all-games-tab',
            icon: Assets.icon.gearFilled.keyName,
            title: 'All games',
            onPress: () {},
          ),
          AppSidebarSection(
            identifier: 'users-tab',
            icon: Assets.icon.chatTextRegular.keyName,
            title: 'Users',
            onPress: () {},
          ),
          AppSidebarSection(
            identifier: 'roles-tab',
            icon: Assets.icon.calendarBlankFilled.keyName,
            title: 'Roles',
            onPress: () {
              push(RolesRoute());
            },
          ),
          AppSidebarSection(
            identifier: 'billing-tab',
            icon: Assets.icon.cubeLight.keyName,
            title: 'Billing',
            onPress: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildTopBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Semantics(
            identifier: 'profile-button',
            child: InkWell(
              onTap: _onTapProfile,
              child: AppCircleAvatar(
                style: WidgetStyle.subtle,
                size: WidgetSize.lg,
                path: bloc.data?.profile?.photoUrl ?? '',
                badge: null,
              ),
            ),
          ),
          AppIconButton(
            identifier: 'edit-profile-button',
            icon: Assets.icon.caretDownLight.keyName,
            style: AppButtonStyle.text,
            onPress: _onTapEditProfile,
          ),
        ],
      ),
    );
  }

  void _onTapProfile() {
    final profile = bloc.data?.profile;
    if (profile == null) return;

    showDialog(
        context: context,
        builder: (context) {
          return ProfileModal(
            identifier: 'profile-modal',
            firstName: profile.firstName.toString(),
            lastName: profile.lastName.toString(),
            email: profile.email.toString(),
            phone: profile.phone.toString(),
            photoUrl: profile.photoUrl,
          );
        });
  }

  void _onTapEditProfile() {
    final profile = bloc.data?.profile;
    if (profile == null) return;

    showDialog(
        context: context,
        builder: (context) {
          return EditProfileModal(
            identifier: 'edit-profile-modal',
            firstName: profile.firstName.toString(),
            lastName: profile.lastName.toString(),
            email: profile.email.toString(),
            phone: profile.phone.toString(),
            photoUrl: profile.photoUrl,
            onTapUpdateProfile: (firstName, lastName, email, phone) {
              pop();

              _updateProfile(
                firstName: firstName,
                lastName: lastName,
                email: email,
                phone: phone,
              );
            },
            onTapChangePassword: (oldPassword, newPassword) {
              pop();

              _resetPassword(
                oldPassword: oldPassword,
                newPassword: newPassword,
              );
            },
          );
        });
  }

  void _getProfile() {
    bloc.addEvent(
      ConsoleEvent.getProfile,
      data: (
        accessToken: '',
        email: '',
      ),
    );
  }

  void _updateProfile({
    required String firstName,
    required String lastName,
    required String email,
    required String phone,
  }) {
    bloc.addEvent(
      ConsoleEvent.updateProfile,
      data: (
        firstName: firstName,
        lastName: lastName,
        email: email,
        phone: phone,
      ),
    );
  }

  void _resetPassword({
    required String oldPassword,
    required String newPassword,
  }) {
    bloc.addEvent(
      ConsoleEvent.resetPassword,
      data: (
        email: '',
        oldPassword: oldPassword,
        newPassword: newPassword,
      ),
    );
  }
}
