part of 'main_cubit.dart';

class MainState {
  MainState({
    this.items = const [],
    this.isError = false,
  });
  final List<ItemsModel> items;
  final bool isError;
}
