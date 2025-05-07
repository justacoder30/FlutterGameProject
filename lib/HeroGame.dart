import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/cupertino.dart';
import 'package:game_project/MapGame.dart';

class HeroGame extends FlameGame {
  late final CameraComponent cameraComponent;
  final MapGame map = MapGame();

  HeroGame() {
    WidgetsFlutterBinding.ensureInitialized();
    Flame.device.fullScreen();
    Flame.device.setLandscape();
  }

  @override
  FutureOr<void> onLoad() {
    cameraComponent = CameraComponent.withFixedResolution(
        width: 560,
        height: 315,
        world: map
    );

    cameraComponent.viewfinder.anchor = Anchor.topLeft;

    addAll([
      cameraComponent,
      map
    ]);
    return super.onLoad();
  }
}

// late