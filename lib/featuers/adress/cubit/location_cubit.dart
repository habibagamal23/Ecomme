import 'package:bloc/bloc.dart';
import 'package:ecomm59/featuers/adress/repo/locationRepo.dart';
import 'package:meta/meta.dart';

part 'location_state.dart';

class LocationCubit extends Cubit<LocationState> {
  RepoLocation repoLocation;
  LocationCubit(this.repoLocation) : super(LocationInitial());

  getCurrentlocation() async {
    emit(LocationLoading());
    try {
      var adress = await repoLocation.getCurrentLocation();
      emit(LocationSucces(adress));
    } catch (e) {
      emit(LocationError(e.toString()));
    }
  }
}
