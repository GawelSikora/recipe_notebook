// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:recipe_notebook/items_repisitory.dart';
import 'package:recipe_notebook/utilities/items_model.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit(this._itemsRepository) : super(MainState());

  StreamSubscription? _streamSubscription;

  final ItemsRepository _itemsRepository;

  Future<void> start() async {
    _streamSubscription = _itemsRepository.getItems().listen((items) {
      emit(MainState(items: items));
    })
      ..onError((error) {
        emit(MainState(isError: true));
      });
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
