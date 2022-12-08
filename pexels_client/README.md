<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

Pexels Client For Flutter

## Features

1. Flutter Test Driven Development
2. Clean Architecture
3. Code Coverage

## Code Coverage

## Option 1
Run `sh coverage.sh` file to generate code coverage or manually method second option

## Option 2

1. Generate `coverage/lcov.info` file
  flutter test --coverage
2. Generate HTML report
  Note: on macOS you need to have lcov installed on your system (`brew install lcov`) to use this:
    genhtml coverage/lcov.info -o coverage/html
3. Open the report
  open coverage/html/index.html

reference: [Link](https://codewithandrea.com/articles/flutter-test-coverage/)

## Usage

Just import to your flutter app and good to go!
