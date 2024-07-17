import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'riverpod solutions',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/provider');
              },
              child: const Text(
                'Provider',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/stateProvider');
              },
              child: const Text('State Provider'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/futureProvider');
              },
              child: const Text('Future Provider'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/streamProvider');
              },
              child: const Text('Stream Provider'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/changeNotifierProvider');
              },
              child: const Text('Change Notifier Provider'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/stateNotifierProvider');
              },
              child: const Text('State Notifier Provider'),
            ),
          ],
        ),
      ),
    );
  }
}
