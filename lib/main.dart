import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:game_project/HeroGame.dart';

void main() {
  HeroGame game = HeroGame();
  runApp(GameWidget(game: game));
}