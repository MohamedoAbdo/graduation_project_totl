import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:tourism_app/features/svscreen/responsive_text.dart';

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

  static setLocal(Locale locale) {
    local = locale.languageCode;
  }
}
