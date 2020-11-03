import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';

class BtDeviceTrail extends StatelessWidget {
  const BtDeviceTrail({Key key, this.device}) : super(key: key);
  final BluetoothDevice device;
  @override
  Widget build(BuildContext ctx) {
    return StreamBuilder<BluetoothDeviceState>(
      builder: (ctx, snapshot) {},
    );
  }
}
