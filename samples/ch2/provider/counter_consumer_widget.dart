import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'counter_provider.dart';

class CounterWidget extends ConsumerWidget {
  const CounterWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.read(counterProvider);
    return Center(
      child: ElevatedButton(
        onPressed: () {
          count.increment();
        },
        child: const Text(
          "Increment",
        ),
      ),
    );
  }
}
