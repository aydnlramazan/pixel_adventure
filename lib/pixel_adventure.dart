import 'dart:async';
import 'dart:ui';

import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:pixel_adventure/levels/level.dart';

class PixelAdventure extends FlameGame {
  @override
  Color backgroundColor() => const Color(0xFF211F30);
  late final CameraComponent cam;

  final word = Level(levelName: "Level-02");

  @override
  FutureOr<void> onLoad() async {
    await images.loadAllImages();

    cam = CameraComponent.withFixedResolution(
        width: 640, height: 360, world: world);
    cam.viewfinder.anchor = Anchor.topLeft;

    addAll([cam]);
    return super.onLoad();
  }
}
