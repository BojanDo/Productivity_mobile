import '../../features/App/presentation/bloc/app_bloc.dart';
import '../config/constants.dart';
import '../services/injection_container.dart';

String? urlFromJson(String? value) {
  if (value == null) return null;
  return '$kApiUrl/file/$value';
}

String requiredUrlFromJson(String value) => sl<AppBloc>()
    .state
    .maybeMap(offline: (_) => value, orElse: () => '$kApiUrl/file/$value');
