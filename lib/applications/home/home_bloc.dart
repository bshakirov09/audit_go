
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:goplaciz/infrastructure/model/explore_model.dart';
import 'package:goplaciz/infrastructure/repository/explore/explore_api.dart';
import 'package:goplaciz/utils/get_it.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const _HomeState()) {
    on<GetHomeInitData>(_getInitData);
  }

  Future<void> _getInitData(HomeEvent event, Emitter<HomeState> emit) async {
    emit(state.copyWith(
      isLoading: true,
      hasError: false,
    ));

    final explores = await getIt.get<ExploreAPI>().getExplores();

    explores.fold(
      (error) => emit(state.copyWith(
        isLoading: false,
        hasError: true,
        error: error
      )),
      (explores) => emit(state.copyWith(
        isLoading: false,
        explores: explores,
      )),
    );

  }

}
