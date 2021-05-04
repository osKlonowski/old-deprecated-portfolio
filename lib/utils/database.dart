import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:cloud_functions/cloud_functions.dart';

//TODO: Update to this
// Future<bool> subscribeToEarlySignUp(String name, String email) async {
//   final HttpsCallable callable = FirebaseFunctions.instance.httpsCallable(
//     'hideChat',
//   );
//   final dynamic resp = await callable.call(<String, dynamic>{
//     'name': name,
//     'email': email,
//   });
//   return resp.data['code'] == 201 ? true : false;
// }

Future<bool> subscribeToEarlySignUp(String name, String email) async {
  try {
    final DocumentReference ref = FirebaseFirestore.instance
        .collection('earlySignUp')
        .doc('$email---${DateTime.now().toString()}');
    await ref.update({
      'name': name,
      'email': email,
    });
    return true;
  } catch (e) {
    print('Failed to Subscribe to Early SignUp: $e');
    return false;
  }
}
