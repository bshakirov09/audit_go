import 'package:bloc/bloc.dart';
import 'package:goplaciz/infrastructure/model/profile_model.dart';
import 'package:goplaciz/infrastructure/repository/profile/profile_api.dart';
import 'package:goplaciz/utils/get_it.dart';
import 'package:meta/meta.dart';

part 'edit_profile_state.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  EditProfileCubit() : super(const EditProfileInitial());

  Future<void> editProfile({required ProfileModel profile}) async {

    emit(const EditProfileLoading());

    var result = await getIt.get<ProfileAPI>().updateProfile(profile: profile);

    result.fold(
      (error) => emit(EditProfileError(error: error)),
      (r) => emit(const ProfileEdited()),
    );
  }

}
