import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  Future<void> getLocation() async {
    Position position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);

    try {
      latitude = position.latitude;
      longitude = position.longitude;
      print(position);
    } catch (e) {
      print(e);
    }
  }
}
