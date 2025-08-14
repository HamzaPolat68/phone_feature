import 'package:vibration/vibration.dart';
import 'base_service.dart';

class VibrationService extends BaseDeviceService<bool> {
  @override
  Future<bool> getInfo() async {
    // Check if device has vibrator / Cihazda titreşim var mı
    return await Vibration.hasVibrator();
  }

  @override
  Future<void> setInfo(bool vibrate) async {
    // Vibrate device for 0.5s if true / Eğer true ise cihazı 0.5 saniye titreştir
    if (vibrate && (await Vibration.hasVibrator())) {
      Vibration.vibrate(duration: 500);
    }
  }
}
