import 'package:battery_plus/battery_plus.dart';
import 'base_service.dart';

class BatteryService extends BaseDeviceService<int> {
  final Battery _battery = Battery();

  @override
  Future<int> getInfo() async {
    // Get battery level in percentage / Pil seviyesini % olarak al
    return await _battery.batteryLevel;
  }

  @override
  Future<void> setInfo(int info) async {
    // Cannot set battery level manually / Pil seviyesini manuel değiştiremezsin
    throw UnimplementedError("Battery level cannot be set manually");
  }
}
