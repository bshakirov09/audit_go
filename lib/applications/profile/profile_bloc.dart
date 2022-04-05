
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goplaciz/infrastructure/model/profile_model.dart';
import 'package:goplaciz/infrastructure/repository/common/get_or_upload_media_api.dart';
import 'package:goplaciz/infrastructure/repository/profile/profile_api.dart';
import 'package:goplaciz/utils/get_it.dart';

part 'profile_event.dart';
part 'profile_state.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(const _ProfileState()) {
    on<GetProfileEvent>(_getProfile);
    on<UpdateAvatarEvent>(_updateAvatar);
    on<DeleteAccountEvent>(_deleteAccount);
  }

  Future<void> _getProfile(ProfileEvent event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(
      isLoading: true,
      profileDeleted: false
    ));

    var result = await getIt.get<ProfileAPI>().getProfile();

    result.fold(
      (error) => emit(state.copyWith(
        isLoading: false,
      )),
      (profile) => emit(state.copyWith(
        isLoading: false,
        profile: profile,
      )),
    );
  }

  Future<void> _updateAvatar(ProfileEvent event, Emitter<ProfileState> emit) async {
    event as UpdateAvatarEvent;

    emit(state.copyWith(isLoading: true, profileDeleted: false));

    final int imageId = await getIt.get<GetOrUploadMediaAPI>().uploadMedia(
      file: event.avatar
    );

    if (imageId != -1) {
      await getIt.get<ProfileAPI>().updateAvatar(imageId: imageId);

      emit(state.copyWith(
        isLoading: false,
        profile: state.profile.rebuildAvatarValue(
          avatar: event.avatar,
          avatarId: imageId
        )
      ));
    }
    else {
      emit(state.copyWith(isLoading: false));
    }
  }

  Future<void> _deleteAccount(
    ProfileEvent event,
    Emitter<ProfileState> emit
  ) async {
    emit(state.copyWith(
      isLoading: true,
      profileDeleted: false,
    ));

    final result = await getIt.get<ProfileAPI>().deleteProfile();

    result.fold(
      (l) => emit(state.copyWith(isLoading: false)),
      (r) => emit(state.copyWith(isLoading: false, profileDeleted: true))
    );
  }

}
