import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_/services/stream.dart';

final streamProvider = StreamProvider.autoDispose((ref) {
  final streamProvider = ref.watch(streamServiceProvider);
  return streamProvider.getStream();
});

class StreamProviderScreen extends ConsumerWidget {
  const StreamProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final streamData = ref.watch(streamProvider);

    // Listen to the autoDisposeStreamProvider
    ref.listen<AsyncValue<int>>(
      streamProvider,
      (previous, next) {
        next.whenData(
          (value) {
            if (value == 0) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Event ended')),
              );
            }
          },
        );
      },
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stream provider'),
      ),
      body: Center(
        child: streamData.when(data: (int data) {
          return Text(
            data.toString(),
            style: const TextStyle(fontSize: 30),
          );
        }, error: (Object error, StackTrace stackTrace) {
          return Text(error.toString());
        }, loading: () {
          return const CircularProgressIndicator();
        }),
      ),
    );
  }
}
