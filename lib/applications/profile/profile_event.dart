part of 'profile_bloc.dart';

@immutable
abstract class ProfileEvent {
  const ProfileEvent();
}

class GetProfileEvent extends ProfileEvent {
  const GetProfileEvent();
}

class UpdateAvatarEvent extends ProfileEvent {
  final String avatar;
  const UpdateAvatarEvent({required this.avatar});
}

class DeleteAccountEvent extends ProfileEvent {
  const DeleteAccountEvent();
}
