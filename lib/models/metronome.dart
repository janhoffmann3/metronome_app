import 'signature.dart';

class Metronome {
  int tempo;
  Signature signature;
  bool isActive;
  String sound;

  Metronome(this.tempo, this.signature, this.isActive, this.sound);
}
