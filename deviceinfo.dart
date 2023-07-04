dependencies:
  cupertino_icons: ^1.0.2
  device_info_plus: ^9.0.2  // add this package in your pubspec.yaml file

import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:example/Device_Screens.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Deviceinfo extends StatefulWidget {
  const Deviceinfo({super.key});

  @override
  State<Deviceinfo> createState() => _DeviceinfoState();
}

class _DeviceinfoState extends State<Deviceinfo> {
  AndroidDeviceInfo? androiddevicedata;
  getdeviceinfo() async {
    DeviceInfoPlugin deviceinfo = DeviceInfoPlugin();
    androiddevicedata = await deviceinfo.androidInfo;
    // print(androiddevicedata!.id);
    // print(androiddevicedata!.model);
    // print(androiddevicedata!.display);
    navigateto(MyAndroidDeviceInfo(androidinfodata: androiddevicedata));
  }

  getspecificedeviceinfo() async {
    DeviceInfoPlugin deviceinfo = DeviceInfoPlugin();
    if (kIsWeb) {
      var webdevicedata = await deviceinfo.webBrowserInfo;
      navigateto(MyWebDeviceInfo(webdeviceinfodata: webdevicedata));
    } else if (Platform.isAndroid) {
      var androiddevicedata = await deviceinfo.androidInfo;
      navigateto(MyAndroidDeviceInfo(androidinfodata: androiddevicedata));
    } else if (Platform.isIOS) {
      var iosdevicedata = await deviceinfo.iosInfo;
      navigateto(MyIosDeviceInfo(iosdeviceinfodata: iosdevicedata));
    } else if (Platform.isMacOS) {
      var macosdevicedata = await deviceinfo.macOsInfo;
      navigateto(MyMacosDeviceInfo(macosdeviceinfodata: macosdevicedata));
    } else if (Platform.isWindows) {
      var windowsdevicedata = await deviceinfo.windowsInfo;
      navigateto(MyWindowsDeviceInfo(windowsdeviceinfodata: windowsdevicedata));
    } else if (Platform.isLinux) {
      var linuxdevicedata = await deviceinfo.linuxInfo;
      navigateto(MyLinuxDeviceInfo(linuxdeviceinfodata: linuxdevicedata));
    }
  }

  navigateto(Widget secondscreen) {
    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return secondscreen;
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 7, 110, 227),
          title: const Text(
            'Device Info',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.info,
              size: 300,
              color: Colors.blue,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: getspecificedeviceinfo,//getdeviceinfo,
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.blue),
                fixedSize: MaterialStatePropertyAll(Size(300, 40)),
              ),
              child: const Text(
                'Get Info',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 20),
              ),
            ),
          ],
        )));
  }
}
