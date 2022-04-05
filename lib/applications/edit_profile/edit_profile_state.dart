part of 'edit_profile_cubit.dart';

@immutable
abstract class EditProfileState {
  const EditProfileState();
}

class EditProfileInitial extends EditProfileState {
  const EditProfileInitial();
}

class EditProfileLoading extends EditProfileState {
  const EditProfileLoading();
}

class EditProfileError extends EditProfileState {
  final String error;
  const EditProfileError({required this.error});
}

class ProfileEdited extends EditProfileState {
  const ProfileEdited();
}
