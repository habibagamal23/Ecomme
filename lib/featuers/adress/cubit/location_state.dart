part of 'location_cubit.dart';

@immutable
sealed class LocationState {}

final class LocationInitial extends LocationState {}
final class LocationLoading extends LocationState {}
final class LocationSucces extends LocationState {
  String adress ;
  LocationSucces(this.adress);
}
final class LocationError extends LocationState {
  String error ;
  LocationError(this.error);
}