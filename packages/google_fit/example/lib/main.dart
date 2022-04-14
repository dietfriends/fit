import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fit/google_fit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';
  late final GoogleFitClient _client;

  @override
  void initState() {
    super.initState();
    initPlatformState();
    _client = GoogleFitClient();
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    // We also handle the message potentially returning null.
    try {
      platformVersion =
          await GoogleFit.platformVersion ?? 'Unknown platform version';
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                var result = await _client.hasPermissions();
                print(result);
              },
              child: const Text('has permission'),
            ),
            ElevatedButton(
              onPressed: () async {
                var result = await _client.requestAuthorization();
                print(result);
              },
              child: const Text('auth'),
            ),
            ElevatedButton(
              onPressed: () async {
                var yesterDay = DateTime(2022, 4, 13).millisecondsSinceEpoch;
                var now = DateTime.now().millisecondsSinceEpoch;

                await _client.aggregate(yesterDay, now);
              },
              child: const Text('daily total'),
            ),
          ],
        ),
      ),
    );
  }
}
