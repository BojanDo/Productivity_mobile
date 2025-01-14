part of 'offline_bloc.dart';

@freezed
class OfflineEvent with _$OfflineEvent {
  const factory OfflineEvent.get() = _OfflineEventGet;

  const factory OfflineEvent.loadOrganization({
    required Organization? organization,
    required OrganizationFormMode mode,
  }) = _OfflineEventLoadOrganization;
}
