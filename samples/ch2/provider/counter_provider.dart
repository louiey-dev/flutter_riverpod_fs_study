import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Counter {
  int counterValue = 0;

  increment() {
    counterValue++;
    if (kDebugMode) {
      print(counterValue);
    }
  }
}

final counterProvider = Provider((ref) => Counter());
