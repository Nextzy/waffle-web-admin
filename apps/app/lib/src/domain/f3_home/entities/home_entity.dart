import 'package:change_application_name/application.dart';

part 'generated/home_entity.freezed.dart';

@freezed
abstract class HomeEntity with _$HomeEntity {
  const factory HomeEntity({
    required String yourData,
  }) = _HomeEntity;

  factory HomeEntity.fromResponse(Response response) => HomeEntity(
        yourData: '',
      );
}
