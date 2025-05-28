import 'package:flutter/foundation.dart';

void myLog(String str) {
  if (kDebugMode) {
    print(str);
  }
}
