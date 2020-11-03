import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';

void main() => runApp(MyFlutterBlueApp());

class MyFlutterBlueApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bluetooth Demo',
      color: Colors.lightBlue,
      home: StreamBuilder<BluetoothState>(
        stream: FlutterBlue.instance.state,
        initialData: BluetoothState.unknown,
        builder: (ctx, snapshot) {
          final state = snapshot.data;
          if(state==BluetoothState.on){
            return FindDevicesScreen();
          }
          return BluetoothOffScreen(state: state);
          return
        },
      )
    );
  }
}

class FindDevicesScreen extends StatelessWidget {

}

class BluetoothOffScreen extends StatelessWidget {

}