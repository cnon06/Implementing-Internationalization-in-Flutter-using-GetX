import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  var count = 0.obs;
  increment() => count++;
  decrement() => count--;
}

void main() => runApp(GetMaterialApp(

        initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => const Home()),
        GetPage(name: '/NextScreen', page: () => const NextScreen(),
        transition: Transition.fade
        ),
        
      ],


      debugShowCheckedModeBanner: false,
      home: const Home(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    ));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(Controller());
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(() => Text("Counter: ${controller.count}",
            style: const TextStyle(
              color: Colors.black,
              fontSize: 30,
            ))),
        ElevatedButton(
            onPressed: () {
              controller.increment();
            },
            child: const Text("Increase")),
        ElevatedButton(
            onPressed: () {
              controller.decrement();
            },
            child: const Text("Decrease")),
        ElevatedButton(
            onPressed: () {
              Get.to(() => const NextScreen());
            },
            child: const Text("To Next Page")),
        ElevatedButton(
            onPressed: () {
              Get.toNamed("/NextScreen");
            },
            child: const Text("To Next Page With Name"))
      ],
    )));
  }
}

class NextScreen extends StatelessWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Controller controller = Get.find();
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("This is Next Screen: ${controller.count}"),
        ElevatedButton(
            onPressed: () {
              Get.back();
            },
            child: const Text("Go Back"))
      ],
    )));
  }
}
