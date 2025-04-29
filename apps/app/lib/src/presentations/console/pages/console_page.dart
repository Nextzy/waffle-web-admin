import 'package:change_application_name/application.dart';

enum ConsolePageEvent {
  showResult,
}

@RoutePage()
class ConsolePage extends AppPage implements AutoRouteWrapper {
  const ConsolePage({super.key});

  @override
  State<ConsolePage> createState() => _ConsolePageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final data = (
          accessToken: '',
          email: '',
        );
        return ConsoleBloc()
          ..addEvent(
            ConsoleEvent.getProfile,
            data: data,
          );
      },
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
    }
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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
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
    return AppSidebar(
      logo: Assets.logo.iconText.keyName,
      items: [
        AppSidebarSection(
          icon: Assets.icon.atLight.keyName,
          title: 'Analytics',
          onPress: () {
            push(SettingRoute());
          },
        ),
        AppSidebarSection(
          icon: Assets.icon.bookOpenFilled.keyName,
          title: 'Campaigns',
          onPress: () {
            push(ProfileRoute());
          },
        ),
        AppSidebarSection(
          icon: Assets.icon.fileTextFilled.keyName,
          title: 'Games',
          onPress: () {},
        ),
        AppSidebarSection(
          icon: Assets.icon.codeLight.keyName,
          title: 'Customers',
          onPress: () {},
        ),
        AppSidebarSection(
          icon: Assets.icon.bellFilled.keyName,
          title: 'Consent and policy',
          onPress: () {},
        ),
        AppSidebarSection(
          icon: Assets.icon.gearFilled.keyName,
          title: 'All games',
          onPress: () {},
        ),
        AppSidebarSection(
          icon: Assets.icon.chatTextRegular.keyName,
          title: 'Users',
          onPress: () {},
        ),
        AppSidebarSection(
          icon: Assets.icon.calendarBlankFilled.keyName,
          title: 'Roles',
          onPress: () {},
        ),
        AppSidebarSection(
          icon: Assets.icon.cubeLight.keyName,
          title: 'Billing',
          onPress: () {},
        ),
      ],
    );
  }

  Widget _buildTopBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            onTap: _onTapProfile,
            child: AppCircleAvatar(
              style: WidgetStyle.subtle,
              size: WidgetSize.lg,
              path: bloc.data?.profile?.photoUrl ?? '',
              badge: null,
            ),
          ),
          AppIconButton(
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
            firstName: profile.firstName.toString(),
            lastName: profile.lastName.toString(),
            email: profile.email.toString(),
            phone: profile.phone.toString(),
            photoUrl: profile.photoUrl,
          );
        });
  }

  void _onTapEditProfile() {
    showDialog(
        context: context,
        builder: (context) {
          return EditProfileModal(
            onTapUpdateProfile: (firstName, lastName, email, phone) {
              final data = (
                firstName: firstName,
                lastName: lastName,
                email: email,
                phone: phone,
              );

              bloc.addEvent(
                ConsoleEvent.updateProfile,
                data: data,
              );
            },
            onTapChangePassword: (oldPassword, newPassword) {
              final data = (
                email: '',
                oldPassword: oldPassword,
                newPassword: newPassword,
              );

              bloc.addEvent(
                ConsoleEvent.resetPassword,
                data: data,
              );
            },
          );
        });
  }
}
