

import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  final String unsplashKey = dotenv.env['UNSPLASH_KEY'] ?? 'No api key found';
}