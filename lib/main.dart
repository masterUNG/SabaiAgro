import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sabai_agro_product/welcome_page/welcome_page_widget.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sabai Agro Product',
     
      supportedLocales: const [Locale('en', '')],
      theme: ThemeData(primarySwatch: Colors.blue),
      home: WelcomePageWidget(),
    );
  }
}

