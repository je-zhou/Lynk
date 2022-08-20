import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:govhack22/api.dart';
import 'package:http/http.dart';
import 'data.dart';
import 'places_api.dart';

Future<LatLng> getCoords(String address) async {
  Map<String, String> parameters = {
    'address': address,
    'key': api,
  };

  // Uri geocachingAPI =
  //     Uri.https('maps.googleapis.com', '/maps/api/geocode/json', parameters);

  try {
    //Response response = await get(geocachingAPI);

    final body = mockAPIData['results'][0];
    //final body = jsonDecode(response.body);

    Map geometry = body['geometry'];

    return LatLng(geometry['location']['lat'], geometry['location']['lng']);
  } catch (e) {
    print(e);
    return LatLng(-37.840935, 144.946457);
  }
}

Future<Set<Marker>> getPlaces(String keyword, LatLng nearby) async {
  Map<String, String> parameters = {
    'keyword': keyword,
    'location': '${nearby.latitude}%2C${nearby.longitude}',
    'key': api,
  };

  // Uri geocachingAPI =
  //     Uri.https('maps.googleapis.com', '/maps/api/place/nearbysearch/json', parameters);

  try {
    //Response response = await get(geocachingAPI);

    final body = dummyPlacesAPIData['results'];

    Set<Marker> markers = <Marker>{};

    body.forEach((res) {
      Marker marker = Marker(
          markerId: MarkerId(res['name']),
          position: LatLng(res['geometry']['location']["lat"],
              res['geometry']['location']["lng"]),
          infoWindow: InfoWindow(title: res['name']));

      markers.add(marker);
    });
    //final body = jsonDecode(response.body);
    print(markers);

    return markers;
  } catch (e) {
    print(e);
    return <Marker>{};
  }
}
