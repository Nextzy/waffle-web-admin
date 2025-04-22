import 'package:change_application_name/application.dart';

enum AuthenticationEvent { signInWithEmail }

class AuthenticationBloc
    extends AppBloc<AuthenticationEvent, WidgetStateEvent> {
  AuthenticationBloc({
    SignInWithEmailAndPasswordUsecase? signInWithEmailUsecase,
  }) : _signInWithEmailUsecase =
            signInWithEmailUsecase ?? SignInWithEmailAndPasswordUsecase();

  final SignInWithEmailAndPasswordUsecase _signInWithEmailUsecase;

  @override
  Future<void> onBlocEvent(BlocEvent<AuthenticationEvent> event) async {
    switch (event.name) {
      case AuthenticationEvent.signInWithEmail:
        final data = event.data as ({String email, String password});
        return _signInWithEmailAndPassword(
          email: data.email,
          password: data.password,
        );
    }
  }

  void _signInWithEmailAndPassword({
    required String email,
    required String password,
  }) =>
      callEitherStream(
        key: AuthenticationEvent.signInWithEmail,
        call: _signInWithEmailUsecase(
          email: email,
          password: password,
        ),
        onData: (state) async {
          if (state.isLoading) {
            // Prevent null data when loading state.
            // emitter.emitLoading(data);
            // emitter.emit(this.state.toLoading());
          } else if (state.isSuccess) {
            // emitter.emitSuccess(state.data);
            // emitter.emit(this.state.toSuccess(data: state.data));
          }
        },
        onFailure: (failure) {
          emitFail();
        },
      );
}
