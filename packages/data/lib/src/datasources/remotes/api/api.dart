import 'package:data/lib.dart';

export 'authentication_api_service.dart';
export 'movie_api_service.dart';
export 'authentication_rpc_service.dart';
export 'admin_rpc_service.dart';
export 'movie_rpc_service.dart';
export 'base/rpc_service.dart';

class CustomOptions extends TypedExtras {
  const CustomOptions({
    this.mockId,
  });

  final int? mockId;
}
