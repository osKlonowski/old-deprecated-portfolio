//
// Generated file. Do not edit.
//

// ignore_for_file: lines_longer_than_80_chars

import 'package:cloud_firestore_web/cloud_firestore_web.dart';
import 'package:cloud_functions_web/cloud_functions_web.dart';
import 'package:firebase_core_web/firebase_core_web.dart';
import 'package:location_web/location_web.dart';
import 'package:native_pdf_renderer/src/web/native_pdf_renderer_plugin.dart';

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

// ignore: public_member_api_docs
void registerPlugins(Registrar registrar) {
  FirebaseFirestoreWeb.registerWith(registrar);
  FirebaseFunctionsWeb.registerWith(registrar);
  FirebaseCoreWeb.registerWith(registrar);
  LocationWebPlugin.registerWith(registrar);
  NativePdfRendererPlugin.registerWith(registrar);
  registrar.registerMessageHandler();
}
