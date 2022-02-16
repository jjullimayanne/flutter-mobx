import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:my_app/controller.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

int _contador = 0;

class _HomeState extends State<Home> {
  Controller controller = Controller();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.all(16),
                child: Observer(
                  builder: (_) {
                    return Text('${controller.contador}',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 80,
                        ));
                  },
                )),
            Padding(
              padding: EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: () {
                  controller.incrementar!();
                },
                child: Text("incrementar"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
