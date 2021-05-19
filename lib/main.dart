import 'package:flutter/material.dart';

import 'package:flutter_application_1/bin/data_persistent.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DataPersistent();
  }
}
