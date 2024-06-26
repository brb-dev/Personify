import 'app.dart';
import 'config.dart';

Future<void> main() async {
  await initialSetup(flavor: Flavor.prod);
  runAppWithCrashlyticsAndLocalization(flavor: Flavor.prod);
}
