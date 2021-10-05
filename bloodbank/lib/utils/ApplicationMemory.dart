

import 'package:shared_preferences/shared_preferences.dart';

class ApplicationMemory {
  /*properties*/
  static const String KEY_NID = "KEY_NID";
  static const String KEY_MOBILE_NO = "KEY_MOBILE_NO";
  static const String KEY_FULL_NAME_EN = "KEY_FULL_NAME_EN";
  static const String KEY_FULL_NAME_AR = "KEY_FULL_NAME_AR";
  static const String KEY_PAT_NO = "KEY_PAT_NO";
  static const String KEY_LANGUAGE = "KEY_LANGUAGE";
  static const String KEY_CURRENT_STAGE = "KEY_CURRENT_STAGE";

  static putString(String key, String value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString(key, value);
    return 1;
  }

  static getString ( String key ) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(key);
  }

  static removeString (String key) async {
   SharedPreferences preferences = await SharedPreferences.getInstance();
   return preferences.remove(key);
  }
}
