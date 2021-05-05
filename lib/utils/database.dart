import 'package:cloud_functions/cloud_functions.dart';

Future<void> subscribeToEarlySignUp(String name, String email,
    {double lng = 0.0, double lat = 0.0}) async {
  final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
    'subscribeEarlySignUp',
  );
  await callable.call(<String, dynamic>{
    'name': name,
    'email': email,
    'longitude': lng,
    'latitude': lat,
  });
  return;
}
