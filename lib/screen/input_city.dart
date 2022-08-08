import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputCity extends StatelessWidget {
  InputCity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cityController = TextEditingController(text: 'Москва');

    void show_weather() {
      final city = cityController;
      print(city);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Погода"),
        centerTitle: true,
      ),
      body: Stack(children: [
        Image.asset(
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
            'assets/background.png'),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: SizedBox(
                width: 300,
                child: TextField(
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                  controller: cityController,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.black38,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
                foregroundColor: MaterialStateProperty.all(Colors.white),
                textStyle: MaterialStateProperty.all(
                  const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                ),
              ),
              child: const Text("Узнать погоду"),
            ),
          ],
        ),
      ]),
    );
  }
}
