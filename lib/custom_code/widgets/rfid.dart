// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/services.dart';
import 'package:zebra_rfid_sdk_plugin/zebra_event_handler.dart';
import 'package:zebra_rfid_sdk_plugin/zebra_rfid_sdk_plugin.dart';

class Rfid extends StatefulWidget {
  const Rfid({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<Rfid> createState() => _RfidState();
}

class _RfidState extends State<Rfid> {
  Map<String?, RfidData> rfidDatas = {};
  ReaderConnectionStatus connectionStatus = ReaderConnectionStatus.UnConnection;
  addDatas(List<RfidData> datas) async {
    for (var item in datas) {
      var data = rfidDatas[item.tagID];
      if (data != null) {
        if (data.count == null) data.count = 0;
        data.count = data.count + 1;
        data.peakRSSI = item.peakRSSI;
        data.relativeDistance = item.relativeDistance;
      } else
        rfidDatas.addAll({item.tagID: item});
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    child:
    Column(
      children: [
        Text('count:${rfidDatas.length.toString()}'),
        const SizedBox(height: 20),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          ElevatedButton(
            onPressed: () async {
              ZebraRfidSdkPlugin.setEventHandler(ZebraEngineEventHandler(
                readRfidCallback: (datas) async {
                  addDatas(datas);
                },
                errorCallback: (err) {
                  ZebraRfidSdkPlugin.toast(err.errorMessage);
                },
                connectionStatusCallback: (status) {
                  setState(() {
                    connectionStatus = status;
                  });
                },
              ));
              ZebraRfidSdkPlugin.connect();
            },
            child: const Text("read Data"),
          ),
          ElevatedButton(
            onPressed: () async {
              setState(() {
                rfidDatas = {};
              });
            },
            child: const Text("clear"),
          ),
          ElevatedButton(
            onPressed: () async {
              ZebraRfidSdkPlugin.disconnect();
            },
            child: const Text("stop"),
          ),
        ]),
        Expanded(
            child: Scrollbar(
          child: ListView.builder(
            itemBuilder: (context, index) {
              var key = rfidDatas.keys.toList()[index];
              return ListTile(
                title: Text(rfidDatas[key]?.tagID ?? 'null'),
                leading: const Icon(Icons.remove),
                subtitle: Text(rfidDatas[key]?.tagID ?? 'null'),
              );
            },
            itemCount: rfidDatas.length,
          ),
        ))
      ],
    );
    return Container();
  }
}
