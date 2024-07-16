import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:islami_app/data/data_source/api_mananger.dart';
import 'package:islami_app/data/models/RadioResponse.dart';
import 'package:provider/provider.dart';

class RadioProvider extends ChangeNotifier {
  List<Radios> data = [];
  final player = AudioPlayer();

  getRadioData() async {
    data = await ApiMananger.getRadios();
    notifyListeners();
  }

  playAudio(int index) async {
    await player.play(UrlSource(data[index].url ?? ''));
    notifyListeners();
  }

  stopAudio() {
    player.stop();
    notifyListeners();
  }
}
