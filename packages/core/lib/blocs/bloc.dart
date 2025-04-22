import 'package:core/lib.dart';

abstract class AppBloc<EVENT, DATA>
    extends FalconWidgetStateEventBloc<EVENT, DATA> {
  AppBloc({
    super.initialData,
    EventTransformer<BlocEvent<EVENT>>? transformer,
  }) : super(
          transformer: transformer ?? concurrent(),
        );
}

abstract class AppSafeBloc<EVENT, DATA>
    extends FalconWidgetStateEventSafeBloc<EVENT, DATA> {
  AppSafeBloc(
    super.initialData, {
    EventTransformer<BlocEvent<EVENT>>? transformer,
  }) : super(
          transformer: transformer ?? concurrent(),
        );
}
