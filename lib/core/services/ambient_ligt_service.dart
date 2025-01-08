import 'dart:async';
import 'package:ambient_light/ambient_light.dart';

class AmbientLightService {
  final AmbientLight _ambientLight = AmbientLight();
  StreamSubscription<double>? _ambientLightSubscription;

  Stream<double> get ambientLightStream => _ambientLight.ambientLightStream;

  Future<double?> getCurrentAmbientLight() async => await _ambientLight.currentAmbientLight();

  void startListening(void Function(double lux) onUpdate) {
    _ambientLightSubscription?.cancel();
    _ambientLightSubscription = ambientLightStream.listen(onUpdate);
  }

  void stopListening() {
    _ambientLightSubscription?.cancel();
  }
}
