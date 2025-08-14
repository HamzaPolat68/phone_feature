import 'package:screen_brightness/screen_brightness.dart';
import 'base_service.dart';

class BrightnessService extends BaseDeviceService<double> {
  @override
  Future<double> getInfo() async {
    try {
      // Ekran parlaklığını al
      return await ScreenBrightness().application;
    } catch (e) {
      print('Parlaklık alınırken hata oluştu: $e');
      throw 'Parlaklık alınamadı';
    }
  }

  @override
  Future<void> setInfo(double brightness) async {
    try {
      // Ekran parlaklığını ayarla
      await ScreenBrightness().setApplicationScreenBrightness(brightness);
    } catch (e) {
      print('Parlaklık ayarlanırken hata oluştu: $e');
      throw 'Parlaklık ayarlanamadı';
    }
  }
}
