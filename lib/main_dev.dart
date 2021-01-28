import 'package:flutter/material.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

import 'view/App.dart';

void main() {
  FlavorConfig(variables: {
    "endPoint": "http://llanosmunoz.com/flutter/dev",
  });
  runApp(MyApp());
}
