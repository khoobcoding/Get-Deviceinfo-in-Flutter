import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';

class MyAndroidDeviceInfo extends StatelessWidget {
  final AndroidDeviceInfo? androidinfodata;
  const MyAndroidDeviceInfo({required this.androidinfodata, super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: const Text(
          'Android Device Info',
          style: TextStyle(
              color: Color.fromARGB(255, 59, 54, 54),
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
      ),
      body: androidinfodata != null
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _row('Device', androidinfodata!.device),
                  _row('Board', androidinfodata!.board),
                  _row('Brand', androidinfodata!.brand),
                  _row('Device', androidinfodata!.device),
                  _row('Display', androidinfodata!.display),
                  _row('Fingerprint', androidinfodata!.fingerprint),
                  _row('Bootloader', androidinfodata!.bootloader),
                  _row('Hardware', androidinfodata!.hardware),
                  _row('Host', androidinfodata!.host),
                  _row('Id', androidinfodata!.id),
                  _row('Manufacturer', androidinfodata!.manufacturer),
                  _row('Model', androidinfodata!.model),
                  _row('Product', androidinfodata!.product),
                  _row('Tags', androidinfodata!.tags),
                  _row('Type', androidinfodata!.type),
                  _row('Height pxl',
                      androidinfodata!.displayMetrics.heightPx.toString()),
                  _row('isPhysicalDevice',
                      androidinfodata!.isPhysicalDevice.toString()),
                  _row('Support32',
                      androidinfodata!.supported32BitAbis.toString()),
                  _row('Support64',
                      androidinfodata!.supported64BitAbis.toString()),
                  _row('Supportabi', androidinfodata!.supportedAbis.toString()),
                  _row('Systemfeature',
                      androidinfodata!.systemFeatures.toString()),
                  _row('Version', androidinfodata!.version.release.toString()),
                ],
              ),
            )
          : const SizedBox(),
    );
  }
}

class MyIosDeviceInfo extends StatelessWidget {
  final IosDeviceInfo? iosdeviceinfodata;
  const MyIosDeviceInfo({required this.iosdeviceinfodata, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: const Text(
          'Ios Device Info',
          style: TextStyle(
              color: Color.fromARGB(255, 59, 54, 54),
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
      ),
      body: iosdeviceinfodata != null
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _row('Board', iosdeviceinfodata!.localizedModel),
                  _row('model', iosdeviceinfodata!.model),
                  _row('name', iosdeviceinfodata!.name),
                  _row('systemName', iosdeviceinfodata!.systemName),
                  _row('systemVersion', iosdeviceinfodata!.systemVersion),
                  _row('isPhysicalDevice',
                      iosdeviceinfodata!.isPhysicalDevice.toString()),
                  _row('utsname', iosdeviceinfodata!.utsname.toString()),
                  _row('identifierForVendor',
                      iosdeviceinfodata!.identifierForVendor.toString()),
                ],
              ),
            )
          : const SizedBox(),
    );
  }
}

class MyWindowsDeviceInfo extends StatelessWidget {
  final WindowsDeviceInfo? windowsdeviceinfodata;
  const MyWindowsDeviceInfo({required this.windowsdeviceinfodata, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: const Text(
          'Windows Device Info',
          style: TextStyle(
              color: Color.fromARGB(255, 59, 54, 54),
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
      ),
      body: windowsdeviceinfodata != null
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _row('buildLab', windowsdeviceinfodata!.buildLab),
                  _row('buildLabEx', windowsdeviceinfodata!.buildLabEx),
                  _row('computerName', windowsdeviceinfodata!.computerName),
                  _row('csdVersion', windowsdeviceinfodata!.csdVersion),
                  _row('deviceId', windowsdeviceinfodata!.deviceId),
                  _row('displayVersion', windowsdeviceinfodata!.displayVersion),
                  _row('editionId', windowsdeviceinfodata!.editionId),
                  _row('productId', windowsdeviceinfodata!.productId),
                  _row('productName', windowsdeviceinfodata!.productName),
                  _row('registeredOwner',
                      windowsdeviceinfodata!.registeredOwner),
                  _row('releaseId', windowsdeviceinfodata!.releaseId),
                  _row('userName', windowsdeviceinfodata!.userName),
                  _row('buildNumber',
                      windowsdeviceinfodata!.buildNumber.toString()),
                  _row('digitalProductId',
                      windowsdeviceinfodata!.digitalProductId.toString()),
                  _row('productType',
                      windowsdeviceinfodata!.productType.toString()),
                ],
              ),
            )
          : const SizedBox(),
    );
  }
}

class MyMacosDeviceInfo extends StatelessWidget {
  final MacOsDeviceInfo? macosdeviceinfodata;
  const MyMacosDeviceInfo({required this.macosdeviceinfodata, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.orange,
          title: const Text(
            'Macos Device Info',
            style: TextStyle(
                color: Color.fromARGB(255, 59, 54, 54),
                fontWeight: FontWeight.bold,
                fontSize: 25),
          ),
        ),
        body: macosdeviceinfodata != null
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _row('arch', macosdeviceinfodata!.arch),
                    _row('computerName', macosdeviceinfodata!.computerName),
                    _row('hostName', macosdeviceinfodata!.hostName),
                    _row('kernelVersion', macosdeviceinfodata!.kernelVersion),
                    _row('model', macosdeviceinfodata!.model),
                    _row('osRelease', macosdeviceinfodata!.osRelease),
                    _row('activeCPUs',
                        macosdeviceinfodata!.activeCPUs.toString()),
                    _row('cpuFrequency',
                        macosdeviceinfodata!.cpuFrequency.toString()),
                    _row('majorVersion',
                        macosdeviceinfodata!.majorVersion.toString()),
                    _row('memorySize',
                        macosdeviceinfodata!.memorySize.toString()),
                    _row('minorVersion',
                        macosdeviceinfodata!.minorVersion.toString()),
                    _row('patchVersion',
                        macosdeviceinfodata!.patchVersion.toString()),
                    _row('systemGUID',
                        macosdeviceinfodata!.systemGUID.toString()),
                  ],
                ),
              )
            : const SizedBox());
  }
}

class MyLinuxDeviceInfo extends StatelessWidget {
  final LinuxDeviceInfo? linuxdeviceinfodata;
  const MyLinuxDeviceInfo({required this.linuxdeviceinfodata, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: const Text(
          'Linux Device Info',
          style: TextStyle(
              color: Color.fromARGB(255, 59, 54, 54),
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
      ),
      body: linuxdeviceinfodata != null
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _row('id', linuxdeviceinfodata!.id),
                  _row('name', linuxdeviceinfodata!.name),
                  _row('prettyName', linuxdeviceinfodata!.prettyName),
                  _row('idLike', linuxdeviceinfodata!.idLike.toString()),
                  _row('buildId', linuxdeviceinfodata!.buildId.toString()),
                  _row('machineId', linuxdeviceinfodata!.machineId.toString()),
                  _row('variant', linuxdeviceinfodata!.variant.toString()),
                  _row('variantId', linuxdeviceinfodata!.variantId.toString()),
                  _row('version', linuxdeviceinfodata!.version.toString()),
                  _row('versionCodename',
                      linuxdeviceinfodata!.versionCodename.toString()),
                  _row('versionId', linuxdeviceinfodata!.versionId.toString()),
                ],
              ),
            )
          : const SizedBox(),
    );
  }
}

class MyWebDeviceInfo extends StatelessWidget {
  final WebBrowserInfo? webdeviceinfodata;
  const MyWebDeviceInfo({required this.webdeviceinfodata, super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: const Text(
          'Web Device Info',
          style: TextStyle(
              color: Color.fromARGB(255, 59, 54, 54),
              fontWeight: FontWeight.bold,
              fontSize: 25),
        ),
      ),
      body: webdeviceinfodata != null
          ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _row(
                      'browserName', webdeviceinfodata!.browserName.toString()),
                  _row('deviceMemory',
                      webdeviceinfodata!.deviceMemory.toString()),
                  _row('hardwareConcurrency',
                      webdeviceinfodata!.hardwareConcurrency.toString()),
                  _row('languages', webdeviceinfodata!.languages.toString()),
                  _row('maxTouchPoints',
                      webdeviceinfodata!.maxTouchPoints.toString()),
                  _row(
                      'appCodeName', webdeviceinfodata!.appCodeName.toString()),
                  _row('appName', webdeviceinfodata!.appName.toString()),
                  _row('appVersion', webdeviceinfodata!.appVersion.toString()),
                  _row('language', webdeviceinfodata!.language.toString()),
                  _row('platform', webdeviceinfodata!.platform.toString()),
                  _row('product', webdeviceinfodata!.product.toString()),
                  _row('productSub', webdeviceinfodata!.productSub.toString()),
                  _row('userAgent', webdeviceinfodata!.userAgent.toString()),
                  _row('vendor', webdeviceinfodata!.vendor.toString()),
                  _row('vendorSub', webdeviceinfodata!.vendorSub.toString()),
                ],
              ),
            )
          : const SizedBox(),
    );
  }
}

Row _row(String title, String text) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        title,
        style: const TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
      ),
      const SizedBox(
        width: 30,
      ),
      Expanded(
        child: Text(
          text,
          style: const TextStyle(
              overflow: TextOverflow.ellipsis,
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 13),
        ),
      ),
    ],
  );
}
