part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {
  const HomeEvent();
}

class GetHomeInitData extends HomeEvent {
  const GetHomeInitData();
}
