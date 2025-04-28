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
  @override
  Widget build(BuildContext context) {
    return buildScaffoldWithBloc(
        listenEvent: null,
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
            push(ProfileRoute());
          },
        ),
        AppSidebarSection(
          icon: Assets.icon.bookOpenFilled.keyName,
          title: 'Campaigns',
          onPress: () {
            push(SettingRoute());
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
            child: AppCircleAvatar(
              style: WidgetStyle.subtle,
              size: WidgetSize.lg,
              path: Assets.mock.avatarSquared.keyName,
              badge: null,
            ),
            onTap: () {
              _onTapProfile();
            },
          ),
        ],
      ),
    );
  }

  void _onTapProfile() {
    final profile = bloc.data!.profile!;

    showDialog(
        context: context,
        builder: (context) {
          return AppModal(
            title: 'Profile',
            description:
                'Email: ${profile.email}\nName: ${profile.firstName} ${profile.lastName}\nRole: ${profile.role}',
          );
        });
  }
}
