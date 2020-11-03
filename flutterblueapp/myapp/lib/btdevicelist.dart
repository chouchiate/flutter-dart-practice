import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';

import './btdevicetrail.dart';

class BtFindDevicesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
        appBar: AppBar(
          actions: [],
          title: Text('Find Bluetooth Devices'),
        ),
        body: RefreshIndicator(
          onRefresh: () =>
              FlutterBlue.instance.startScan(timeout: Duration(seconds: 5)),
          child: SingleChildScrollView(
              child: Column(
            children: <Widget>[
              StreamBuilder<List<BluetoothDevice>>(
                builder: (ctx, snapshot) => Column(
                    children: snapshot.data
                        .map((data) => ListTile(
                            title: Text(data.name),
                            subtitle: Text(data.id.toString()),
                            trailing: BtDeviceTrail(device: data)))
                        .toList()),
              )
            ],
          )),
        )); //Scaffold
  }
}
