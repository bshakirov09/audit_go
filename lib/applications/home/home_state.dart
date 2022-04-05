part of 'home_bloc.dart';

@immutable
@freezed
class HomeState with _$HomeState {

  const HomeState._();

  const factory HomeState({
    @Default(true) bool isLoading,
    @Default(false) bool hasError,
    @Default('') String error,
    @Default(<ExploreModel>[]) List<ExploreModel> explores,
  }) = _HomeState;

}
