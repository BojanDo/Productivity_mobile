import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/entities/paginated_list.dart';
import '../../../../../core/errors/failure.dart';
import '../../../../../core/services/injection_container.dart';
import '../../../../App/presentation/bloc/app_bloc.dart';
import '../../../../User/domain/entities/organizations.dart';
import '../../../../User/domain/usecases/get_organizations.dart';
import '../../../../User/presentation/bloc/user_bloc.dart';

part 'offline_event.dart';

part 'offline_state.dart';

part 'generated/offline_bloc.freezed.dart';

class OfflineBloc extends Bloc<OfflineEvent, OfflineState> {
  OfflineBloc(GetOrganizations getOrganizations, this.organizationFormBloc)
      : _getOrganizations = getOrganizations,
        super(
          OfflineState.getting(
            organizations: Organizations(
              items: List<Organization>.generate(
                2,
                (int index) => const Organization(
                  id: 0,
                  name: 'This is organization',
                  description: 'desc',
                ),
              ),
              total: 2,
            ),
          ),
        ) {
    on<OfflineEvent>(
      (OfflineEvent event, Emitter<OfflineState> emit) => event.when(
        get: () async {
          final Either<Failure, Organizations> result =
              await _getOrganizations();
          result.fold(
            (Failure failure) {}, //TODO: maybe add something here???
            (Organizations organizations) =>
                emit(OfflineState.loaded(organizations: organizations)),
          );
          return null;
        },
        loadOrganization:
            (Organization? organization, OrganizationFormMode mode) =>
                _handleLoadOrganization(organization, mode, emit),
      ),
    );
  }

  Future<void> _handleLoadOrganization(
    Organization? organization,
    OrganizationFormMode mode,
    Emitter<OfflineState> emit,
  ) async {
    organizationFormBloc.initialize(organization, mode);
  }

  final GetOrganizations _getOrganizations;
  final OrganizationFormBloc organizationFormBloc;
}
