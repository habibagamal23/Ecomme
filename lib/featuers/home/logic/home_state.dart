part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

final class HomeSucces extends HomeState {
  List<String> categroies;
  List<Product> products;
  HomeSucces(this.categroies , this.products);
}

final class HomeError extends HomeState {
  String err;
  HomeError(this.err);
}
