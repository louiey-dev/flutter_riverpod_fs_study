import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'provider/counter_consumer_stateful_widget.dart';
import 'provider/counter_consumer_widget.dart';
import 'provider/counter_provider.dart';
import 'state_provider/my_state_provider.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      // body: const CounterWidget(),
      // body: const CounterWidget(),
      // body: const CounterStatefulWidget(),
      body: Consumer(builder: (context, ref, child) {
        final count = ref.watch(counterStateProvider);
        return Center(
          child:
              Text("$count", style: Theme.of(context).textTheme.headlineMedium),
        );
      }),
      floatingActionButton: Consumer(
        builder: (context, ref, child) => FloatingActionButton(
          onPressed: () {
            ref.read(counterProvider).increment();
            ref
                .read(counterStateProvider.notifier)
                .update((state) => state + 1);
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
