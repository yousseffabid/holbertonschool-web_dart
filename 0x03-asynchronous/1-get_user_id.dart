import 'dart:convert';
import '1-util.dart';

Future<String> getUserId() async {
  var iduser = json.decode(await fetchUserData());

  return iduser["id"];
}