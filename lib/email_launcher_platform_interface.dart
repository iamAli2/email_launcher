import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'email_launcher_method_channel.dart';

abstract class EmailLauncherPlatform extends PlatformInterface {
  /// Constructs a EmailLauncherPlatform.
  EmailLauncherPlatform() : super(token: _token);

  static final Object _token = Object();

  static EmailLauncherPlatform _instance = MethodChannelEmailLauncher();

  /// The default instance of [EmailLauncherPlatform] to use.
  ///
  /// Defaults to [MethodChannelEmailLauncher].
  static EmailLauncherPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [EmailLauncherPlatform] when
  /// they register themselves.
  static set instance(EmailLauncherPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
