import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';

class BtOffScreen extends StatelessWidget {
  @override
  const BtOffScreen({Key key, this.state}) : super(key: key);
  final BluetoothState state;
  Widget build(BuildContext ctx) {
    return Scaffold(
        backgroundColor: Colors.lightBlue,
        body: Center(
          child: Column(
            children: <Widget>[
              Icon(
                Icons.bluetooth_disabled,
                size: 200.0,
                color: Colors.white54,
              ),
              Text(
                'Bluetooth Adapter is ${state != null ? state.toString().substring(15) : 'not available'}',
                style: Theme.of(ctx)
                    .primaryTextTheme
                    .subhead
                    .copyWith(color: Colors.white),
              )
            ],
          ),
        )); //Scaffold
  }
}
