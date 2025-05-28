import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../utils.dart';

class Counter {
  int counterValue = 0;

  void increment() {
    counterValue++;
    myLog(counterValue.toString());
  }

  void decrement() {
    counterValue--;
    myLog(counterValue.toString());
  }
}

final counterProvider = Provider<Counter>((ref) {
  return Counter();
});
