import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
// import 'package:persona_flutter/persona_flutter.dart';

void main() {
  const MethodChannel channel = MethodChannel('persona_flutter');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, (MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(channel, null);
  });
}
