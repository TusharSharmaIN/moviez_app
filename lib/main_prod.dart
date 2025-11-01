import 'package:moviez_app/app.dart';
import 'package:moviez_app/config.dart';

Future<void> main() async {
  await initialSetup(flavor: Flavor.prod);
  runAppWith();
}
