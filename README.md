# Riverpod Learning App
![app cover](https://github.com/Yacine300/riverpod-learning-app/blob/main/cover.png)

Welcome to the Riverpod Learning App! This application is designed to help developers learn and understand the various types of providers available in Riverpod, a popular state management library for Flutter.

## Table of Contents

- Introduction
- App & Documentation
- Installation
- Providers Covered
  - Provider
  - StateProvider
  - FutureProvider
  - StreamProvider
  - ChangeNotifierProvider
  - StateNotifierProvider
- Difference Between ChangeNotifierProvider and StateNotifierProvider
- Consumer, ConsumerWidget, and ConsumerStatefulWidget
- Screenshots

## Introduction

Riverpod Learning App is a comprehensive guide and practical application for mastering Riverpod in Flutter. The app demonstrates the use of various Riverpod providers with practical examples, helping you to understand when and how to use each provider effectively.

Riverpod is an enhanced version of the Provider package in Flutter. It improves upon the concepts introduced by Provider, especially in terms of state management. Unlike Provider, where state management is often coupled with the widget tree, Riverpod promotes a more decoupled approach. In Riverpod:

- **Decoupled State Management**: State management is decoupled from the widget tree (no BuildContext nedded ), allowing for more flexible and scalable architecture.
  
- **Scoped State**: Riverpod introduces scoped state management, making it easier to manage and access state across different parts of your application without relying heavily on context.

- **Dependency Injection**: Riverpod uses a robust dependency injection mechanism, leveraging Dart's dependency injection capabilities for better modularity and testability.

- **Provider Composition**: Providers in Riverpod can be composed and nested more flexibly than in traditional Provider, allowing for cleaner and more organized code structures.

By adopting Riverpod, developers can achieve cleaner, more maintainable codebases while leveraging powerful state management capabilities in their Flutter applications.


## App & Documentation Features

- Examples of all major Riverpod providers
- Interactive UI to demonstrate state management
- Clear and concise explanations of each provider
- Comparison between ChangeNotifierProvider and StateNotifierProvider

## Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/yacine300/riverpod-learning-app.git
    cd riverpod-learning-app
    ```

2. Install dependencies:
    ```bash
    flutter pub get
    ```

3. Run the app:
    ```bash
    flutter run
    ```

## Providers Covered

### Provider


`Provider` is the simplest form of state management in Riverpod. It provides a value without managing or listening to changes.

```dart
final helloProvider = Provider((ref) => 'Hello, Riverpod!'); 

```

### StateProvider

`StateProvider` allows you to create and manage a piece of state. It is generally used when trying to display pop-ups, SnackBars, or dialogs based on a certain state. This makes it particularly useful for managing UI-related state changes dynamically.

```dart
final counterProvider = StateProvider<int>((ref) => 0);
```

### FutureProvider
`FutureProvider` is used to provide a value that might not be immediately available, such as data fetched from an API.


```dart
final futureProvider = FutureProvider<String>((ref) async {
  await Future.delayed(Duration(seconds: 2));
  return 'Fetched data';
});

```
### StreamProvider

`StreamProvider` is used to provide a value from a stream.
``` dart 
final streamProvider = StreamProvider<int>((ref) {
  return Stream.periodic(Duration(seconds: 1), (count) => count);
});
```

### ChangeNotifierProvider
`ChangeNotifierProvider` is used to provide an instance of a class that extends ChangeNotifier.


``` dart
final changeNotifierProvider = ChangeNotifierProvider((ref) => MyChangeNotifier());
```

### StateNotifierProvider
`StateNotifierProvider` is used to provide an instance of a class that extends StateNotifier.

``` dart
final stateNotifierProvider = StateNotifierProvider<MyStateNotifier, int>((ref) => MyStateNotifier());
```

# Difference Between ChangeNotifierProvider and StateNotifierProvider
## ChangeNotifierProvider

- ChangeNotifierProvider uses ChangeNotifier to manage state. It is part of the provider package and has been integrated into Riverpod for compatibility. However, it can become unwieldy for complex state management due to its reliance on mutable state.

# StateNotifierProvider
- StateNotifierProvider uses StateNotifier, which is designed for immutable state management. It encourages a more functional approach to state management, making the code easier to test and maintain. StateNotifier is more powerful and flexible compared to ChangeNotifier.

## Key Differences:
- Immutability: StateNotifier encourages immutable state, while ChangeNotifier works with mutable state.
- API Design: StateNotifier has a cleaner and more predictable API, especially for complex state management.
- Performance: StateNotifier can lead to better performance due to its immutability.


### Consumer, ConsumerWidget, and ConsumerStatefulWidget

#### Consumer

In Flutter, `Consumer` is a widget provided by the `provider` package (and adapted in Riverpod) that allows you to listen to changes in a provider and rebuild parts of your UI when the provider's value changes. Here are the key points:

- **Usage**: `Consumer` is typically used within the build method of a Flutter widget to rebuild specific parts of the UI in response to changes in state.
  
- **Builder Pattern**: It follows the builder pattern (`builder` parameter) where you define a function that returns the UI elements you want to rebuild when the provider's value changes.
  
- **Efficiency**: `Consumer` ensures that only the subtree defined by its `builder` is rebuilt, optimizing performance by avoiding unnecessary rebuilds of the entire widget tree.

#### ConsumerWidget

`ConsumerWidget` is a convenient abstraction provided by the `provider` package (and used similarly in Riverpod) that simplifies working with providers and consuming their values in Flutter widgets:

- **Stateless Widget**: `ConsumerWidget` is a stateless widget that abstracts away the complexity of managing state and listening to changes from providers.
  
- **Automatic Rebuilds**: It automatically listens to changes in providers it depends on and rebuilds itself when their values change, ensuring your UI stays up-to-date with the latest data.

- **Usage**: You implement the `build` method to define the UI based on the current values of providers. It's suitable for scenarios where the entire widget needs to rebuild in response to state changes.

#### ConsumerStatefulWidget

`ConsumerStatefulWidget` extends `ConsumerWidget` to support scenarios where stateful logic is required in addition to consuming provider values:

- **Stateful Widget**: `ConsumerStatefulWidget` allows you to manage local state alongside consuming provider values, combining the benefits of state management with providers.

- **Usage**: You can override the `createState` method to instantiate a state object where you can manage local state and subscribe to provider values using `ref.watch`.

- **Flexibility**: It provides more flexibility compared to `ConsumerWidget` by allowing you to handle complex interactions and stateful operations within the widget's lifecycle.

### Summary

- **Consumer**: Used to listen to changes in providers and rebuild parts of the UI.
- **ConsumerWidget**: Stateless widget that automatically rebuilds based on provider changes.
- **ConsumerStatefulWidget**: Stateful widget that manages local state alongside consuming provider values.

These widgets and abstractions in Riverpod and Flutter help streamline state management and UI updates, ensuring your app remains responsive and efficient.


## Screenshoots

<div class="Home Dark Mode" style="width: 150px; height: 300px;">
  <img src="https://github.com/Yacine300/riverpod-learning-app/blob/main/screenshots/home_dark_mode.jpg" alt="Home Dark Mode" style="width: 100%; height: 100%;">
</div>

<div class="Home Light Mode" style="width: 150px; height: 300px;">
  <img src="https://github.com/Yacine300/riverpod-learning-app/blob/main/screenshots/home_light_mode.jpg" alt="Home Light Mode" style="width: 100%; height: 100%;">
</div>

<div class="State Provider" style="width: 150px; height: 300px;">
  <img src="https://github.com/Yacine300/riverpod-learning-app/blob/main/screenshots/state_provider.jpg" alt="State Provider" style="width: 100%; height: 100%;">
</div>

<div class="Change Notifier Provider" style="width: 150px; height: 300px;">
  <img src="https://github.com/Yacine300/riverpod-learning-app/blob/main/screenshots/change_notifier_provider.jpg" alt="Change Notifier Provider" style="width: 100%; height: 100%;">
</div>




