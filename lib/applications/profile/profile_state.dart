part of 'profile_bloc.dart';

@immutable
@freezed
class ProfileState with _$ProfileState {

  const ProfileState._();

  const factory ProfileState({
    @Default(false) bool isLoading,
    @Default(false) bool profileDeleted,
    @Default(ProfileModel.init) ProfileModel profile,
  }) = _ProfileState;

}
