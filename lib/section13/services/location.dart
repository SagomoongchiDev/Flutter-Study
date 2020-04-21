import 'package:geolocator/geolocator.dart';

// ignore: must_be_immutable
class Location extends Position {
  double _latitude;
  double _longitude;

  double get latitude => _latitude;
  double get longitude => _longitude;

  Future<void> getLocationFromGeolocator() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      this._longitude = position.longitude;
      this._latitude = position.latitude;
    } catch (e) {
      return e;
    }
  }
}
