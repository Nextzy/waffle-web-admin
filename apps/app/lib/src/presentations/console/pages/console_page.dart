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

        return _buildBody(context);
      },
    );
  }

  Widget _buildBody(BuildContext context) {
    return Container(
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
    );
  }

  Widget _buildAppSidebar() {
    return AppSidebar(
      logo: Assets.logo.iconText.keyName,
      items: [
        AppSidebarSection(
          icon: Assets.icon.infoRegular.keyName,
          title: 'Analytics',
          onPress: () {},
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
