import 'package:flutter/material.dart';
import 'package:get/get.dart';

var h = Get.height;
var w = Get.width;

var space = 30.0;

var customTileHeight = h / 3.6;
var customTileWidth = w * 0.18;

var drawer = w * 0.2;
var page = w * 0.8;

EdgeInsets padding({
  double left = 0,
  double right = 0,
  double up = 0,
  double down = 0,
}) {
  var padding =
      EdgeInsets.only(left: left, right: right, top: up, bottom: down);
  return padding;
}
