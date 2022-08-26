import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'messages.dart';
import 'mycontroller.dart';




void main() => runApp(GetMaterialApp(
      translations: Messages(),
      locale: const Locale('de', 'DE'),
      fallbackLocale: const Locale('en', 'US'),
      title: "Internationalization",
      debugShowCheckedModeBanner: false,
      home:  Home(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    ));

// ignore: use_key_in_widget_constructors
class Home extends StatelessWidget {
  MyController myController = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("hello".tr, style: const TextStyle(fontSize: 30),),
        Text("data: ${Get.locale}"),
        
        ElevatedButton(
            onPressed: () {
              myController.changeLanguage("en", "EN");
            },
            child: const Text("English")),



        ElevatedButton(
            onPressed: () {
              myController.changeLanguage("de", "DE");
            },
            child: const Text("Deutchs")),

      ElevatedButton(
            onPressed: () {
              myController.changeLanguage("fr", "FR");
            },
            child: const Text("French")),

        ElevatedButton(
            onPressed: () {
              myController.changeLanguage("es", "ES");
            },
            child: const Text("Spanish")),

            ElevatedButton(
            onPressed: () {
              myController.changeLanguage("it", "IT");
            },
            child: const Text("Italian"))

      ],
    )));
  }
}
