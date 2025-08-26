import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

/// Gets the user's current location as [LatLng]-like values (latitude, longitude).
/// Handles permission checks and requests.
/// Throws [Exception] if permissions are denied or location services are disabled.
Future<LatLng> getUserLocation() async {
  // Check if location services are enabled
  final serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    throw Exception('Location services are disabled.');
  }

  // Check location permission
  LocationPermission permission = await Geolocator.checkPermission();

  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      throw Exception('Location permission denied.');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    throw Exception('Location permissions are permanently denied.');
  }

  // Get current position
  final position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

  return LatLng(position.latitude, position.longitude);
}
