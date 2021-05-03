import 'package:cloud_functions/cloud_functions.dart';

Future<bool> subscribeToEarlySignUp(String name, String email) async {
  final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
    'hideChat',
  );
  final dynamic resp = await callable.call(<String, dynamic>{
    'name': name,
    'email': email,
  });
  return resp.data['code'] == 201 ? true : false;
}
