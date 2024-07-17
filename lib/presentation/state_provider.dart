import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final stateProvider = StateProvider.autoDispose<int>((ref) => 0);

class StateProviderScreen extends ConsumerWidget {
  const StateProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(stateProvider);
    ref.listen(stateProvider, (p, c) {
      if (c == 10) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Value is $value')),
        );
      }
    });
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Provider'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Text(
              "the current value is $value",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  ref.watch(stateProvider.notifier).state++;
                },
                child: const Text('increment')),
            ElevatedButton(
                onPressed: () {
                  ref.invalidate(stateProvider);
                },
                child: const Text('invalidate'))
          ],
        ),
      ),
    );
  }
}
