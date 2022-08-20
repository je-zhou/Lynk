import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:govhack22/api.dart';
import 'package:govhack22/data.dart';
import 'package:http/http.dart';

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
