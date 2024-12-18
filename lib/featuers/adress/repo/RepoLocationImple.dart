import 'package:ecomm59/featuers/adress/repo/locationRepo.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';


class RepoLocationImplem implements RepoLocation{
  @override
  Future<String> getCurrentLocation()async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw Exception("Service not enable");
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      }


    if ( permission == LocationPermission.denied) {
      throw Exception("Req not deinid");
    }

    Position position = await Geolocator.getCurrentPosition();

    List<Placemark> placemarks = await placemarkFromCoordinates(position.latitude, position.longitude);

    Placemark placemark = placemarks.first;

return "${placemark.street} , ${placemark.country} , ${placemark.postalCode}";


  }
}