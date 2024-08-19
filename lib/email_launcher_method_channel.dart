import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'email_launcher_platform_interface.dart';

/// An implementation of [EmailLauncherPlatform] that uses method channels.
class MethodChannelEmailLauncher extends EmailLauncherPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('email_launcher');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
