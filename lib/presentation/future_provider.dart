import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_/model/to_do.dart';
import 'package:riverpod_/services/api.dart';

final futureProviderValue = FutureProvider.family<ToDO, int>((ref, id) async {
  final apiService = ref.watch(apiServiceProvider);
  return apiService.getToDo(id);
});

late int random;

class FutureProviderScreen extends ConsumerStatefulWidget {
  const FutureProviderScreen({super.key});

  @override
  _FutureProviderScreenState createState() => _FutureProviderScreenState();
}

class _FutureProviderScreenState extends ConsumerState<FutureProviderScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    random = Random().nextInt(50);
  }

  @override
  Widget build(BuildContext context) {
    final toDOData = ref.watch(futureProviderValue(random));
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              random++;
              ref.refresh(futureProviderValue(random));
            },
            icon: const Icon(Icons.refresh),
          )
        ],
      ),
      body: Center(
        child: RefreshIndicator(
          onRefresh: () => ref.refresh(futureProviderValue(random++).future),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    toDOData.when(
                      data: (data) {
                        final id = data.id;
                        final completed = data.complited;
                        return ListTile(
                          title: Text(data.title),
                          leading: CircleAvatar(child: Text('$id')),
                          trailing: completed
                              ? const Icon(Icons.check)
                              : const Icon(Icons.hourglass_top_rounded),
                        );
                      },
                      error: (error, _) {
                        return Text(error.toString());
                      },
                      loading: () {
                        return const CircularProgressIndicator();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
