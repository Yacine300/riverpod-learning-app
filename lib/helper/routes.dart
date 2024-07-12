import 'package:flutter/material.dart';
import 'package:riverpod_/presentation/change_notifier_provider.dart';
import 'package:riverpod_/presentation/future_provider.dart';
import 'package:riverpod_/presentation/home_screen.dart';
import 'package:riverpod_/presentation/provider_screen.dart';
import 'package:riverpod_/presentation/state_notifier_provider.dart';
import 'package:riverpod_/presentation/state_provider.dart';
import 'package:riverpod_/presentation/stream_provider.dart';

final Map<String, WidgetBuilder> routeMap = {
  '/home': (context) => const HomeScreen(),
  '/provider': (context) => const ProviderScreen(),
  '/stateProvider': (context) => const StateProviderScreen(),
  '/futureProvider': (context) => const FutureProviderScreen(),
  '/streamProvider': (context) => const StreamProviderScreen(),
  '/changeNotifierProvider': (context) => const ChangeNotifierProviderScreen(),
  '/stateNotifierProvider': (context) => const StateNotifierScreen(),
};
