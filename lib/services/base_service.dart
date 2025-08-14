/// Base abstract class for device services
/// Cihaz servisleri için temel abstract sınıf
abstract class BaseDeviceService<T> {
  Future<T> getInfo(); // Get current info / Mevcut bilgiyi al
  Future<void> setInfo(T info); // Set new info / Yeni bilgi ayarla
}
