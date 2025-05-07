import 'dart:async';

import 'package:flame/components.dart';
import 'package:flame_tiled/flame_tiled.dart';

class MapGame extends World {
  late TiledComponent mapComponent;

  @override
  FutureOr<void> onLoad() async {
    mapComponent = await TiledComponent.load('map.tmx', Vector2.all(16));
    add(mapComponent);

    return super.onLoad();
  }
}