import 'package:falconx/lib.dart';

class DeviceInfoDialog extends StatelessWidget {
  const DeviceInfoDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.all(16.0),
      title: Container(
        padding: const EdgeInsets.only(top: 24.0, left: 24.0, right: 24.0),
        child: const Text(
          'Device Info',
          // style: TextStyle(color: Colors.white),
        ),
      ),
      titlePadding: const EdgeInsets.all(0),
      content: _getContent(),
    );
  }

  Widget _getContent() {
    if (Platform.isAndroid) {
      return _androidContent();
    }
    if (Platform.isIOS) {
      return _iOSContent();
    }
    return const Text("You're not on Android neither iOS");
  }

  Widget _iOSContent() {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    return FutureBuilder<IosDeviceInfo>(
      future: deviceInfo.iosInfo,
      builder: (context, snapshot) {
        if (!snapshot.hasData) return Container();

        final device = snapshot.data;
        return SingleChildScrollView(
          child: Column(
            children: <Widget>[
              buildTile(
                'Physical device: ',
                device?.isPhysicalDevice.toString(),
              ),
              buildTile('Device: ', device?.name),
              buildTile('Model: ', device?.model),
              buildTile('System name: ', device?.systemName),
              buildTile('System version: ', device?.systemVersion),
            ],
          ),
        );
      },
    );
  }

  Widget _androidContent() {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    return FutureBuilder<AndroidDeviceInfo>(
      future: deviceInfo.androidInfo,
      builder: (context, snapshot) {
        if (!snapshot.hasData) return Container();
        final device = snapshot.data;
        return FutureBuilder<PackageInfo>(
            future: PackageInfo.fromPlatform(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) return Container();
              final package = snapshot.data;
              return SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    buildTile('App name: ', package?.appName),
                    buildTile('Version: ',
                        '${package?.version} (${package?.buildNumber})'),
                    buildTile('Package name: ', package?.packageName),
                    Space.gap24,
                    buildTile('Android version: ', device?.version.release),
                    buildTile(
                        'Android SDK: ', device?.version.sdkInt.toString()),
                    buildTile(
                      'Physical device: ',
                      device?.isPhysicalDevice.toString(),
                    ),
                    buildTile('Manufacturer: ', device?.manufacturer),
                    buildTile('Model: ', device?.model),
                    buildTile('Device: ', device?.device),
                    buildTile('Hardware: ', device?.hardware),
                  ],
                ),
              );
            });
      },
    );
  }

  Widget buildTile(String key, String? value) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            key,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Expanded(child: Text(value ?? ''))
        ],
      ),
    );
  }

}
