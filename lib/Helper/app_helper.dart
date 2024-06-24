import 'dart:developer';

class AppHelper {
  static String selectedAnswer = '';
  static String userUuid = '';
  static String local = '';

  static void setSelectedAnswer(String answer) {
    selectedAnswer = answer;
  }

  static void setUserUuid(String uuid) {
    userUuid = uuid;
  }

  static setLocal(String locale) {
    log(local);

    local = locale;
  }
}
