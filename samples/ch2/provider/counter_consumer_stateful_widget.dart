import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'counter_provider.dart';

class CounterStatefulWidget extends ConsumerStatefulWidget {
  const CounterStatefulWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CounterStatefulWidgetState();
}

class _CounterStatefulWidgetState extends ConsumerState<CounterStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          final count = ref.read(counterProvider);
          count.increment();
        },
        child: const Text(
          "Increment",
        ),
      ),
    );
  }
}
