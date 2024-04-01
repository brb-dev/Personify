import 'package:firebase_remote_config/firebase_remote_config.dart';

class FirebaseRemoteConfigService {
  final remoteConfig = FirebaseRemoteConfig.instance;
  Future<void> init() async {
    await remoteConfig.setConfigSettings(RemoteConfigSettings(
      fetchTimeout: const Duration(minutes: 1),
      minimumFetchInterval: const Duration(hours: 12),
    ));
    await remoteConfig.ensureInitialized();
    await remoteConfig.fetchAndActivate();
  }

  String getDatagramApiKey() {
    return remoteConfig.getString('datagram_api_key');
  }

  String getOpenAIApiKey() {
    return remoteConfig.getString('openai_api_key');
  }
}
