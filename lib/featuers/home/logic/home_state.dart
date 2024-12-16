part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

final class HomeSucces extends HomeState {
  List<String> categroies;
  HomeSucces(this.categroies);
}

final class HomeError extends HomeState {
  String err;
  HomeError(this.err);
}
