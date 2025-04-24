import 'package:change_application_name/application.dart';

enum ConsolePageEvent {
  showResult,
  showProfile,
}

@RoutePage()
class ConsolePage extends AppPage implements AutoRouteWrapper {
  const ConsolePage({super.key});

  @override
  State<ConsolePage> createState() => _ConsolePageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => ConsoleBloc()..addEvent(ConsoleEvent.initial),
      child: this,
    );
  }
}

class _ConsolePageState
    extends AppPageBlocWidgetState<ConsolePage, ConsoleBloc, dynamic> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildAppSidebar(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
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
          icon: Assets.icon.infoRegular.keyName,
          title: 'Analytics',
          onPress: () {
            print('onPress');
          },
        ),
        AppSidebarSection(
          icon: Assets.icon.infoRegular.keyName,
          title: 'Campaigns',
        ),
        AppSidebarSection(
          icon: Assets.icon.infoRegular.keyName,
          title: 'Games',
        ),
        AppSidebarSection(
          icon: Assets.icon.infoRegular.keyName,
          title: 'Customers',
        ),
        AppSidebarSection(
          icon: Assets.icon.infoRegular.keyName,
          title: 'Consent and policy',
        ),
        AppSidebarSection(
          icon: Assets.icon.infoRegular.keyName,
          title: 'All games',
        ),
        AppSidebarSection(
          icon: Assets.icon.infoRegular.keyName,
          title: 'Users',
        ),
        AppSidebarSection(
          icon: Assets.icon.infoRegular.keyName,
          title: 'Roles',
        ),
        AppSidebarSection(
          icon: Assets.icon.infoRegular.keyName,
          title: 'Billing',
        ),
      ],
    );
  }

  void _onTapProfile() {
    //
    showDialog(
        context: context,
        builder: (context) {
          return AppModal(
            title: 'Profile',
            description: 'aaa \n aaa',
          );
        });

    //
    final data = (
      accessToken: '',
      email: '',
    );

    bloc.addEvent(
      ConsoleEvent.tapProfile,
      data: data,
    );
  }
}
