import 'package:change_application_name/application.dart';

enum AuthenticationPageEvent {
  showResult,
}

@RoutePage()
class AuthenticationPage extends AppPage implements AutoRouteWrapper {
  const AuthenticationPage({super.key});

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          AuthenticationBloc()..addEvent(AuthenticationEvent.initial),
      child: this,
    );
  }
}

class _AuthenticationPageState extends AppPageBlocWidgetState<
    AuthenticationPage, AuthenticationBloc, dynamic> {
  void onListenerEvent(
    BuildContext context,
    Object event,
    Object? data,
  ) {
    final resultMessage = data as String;

    switch (event) {
      case AuthenticationPageEvent.showResult:
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
    return Center(
      child: SizedBox(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppText(
              'Sign in to Waffle Game',
              textAlign: TextAlign.center,
              style: AppTextStyleBuilder.ui.s24.bold.colorPrimaryInverse
                  .build(context),
            ),
            Gap(32),
            AppTextField(
              placeholderText: 'Email',
              controller: bloc.usernameController,
            ),
            Gap(16),
            AppTextField(
              placeholderText: 'Password',
              controller: bloc.passwordController,
            ),
            Gap(16),
            AppButton(
              text: 'Login',
              // style: AppButtonStyle.filled,
              onPress: _onTapSignIn,
            ),
          ],
        ),
      ),
    );
  }

  void _onTapSignIn() {
    final data = (
      email: bloc.usernameController.text,
      password: bloc.passwordController.text,
    );

    bloc.addEvent(
      AuthenticationEvent.signInWithEmail,
      data: data,
    );
  }
}
