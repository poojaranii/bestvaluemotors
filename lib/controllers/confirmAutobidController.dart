import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ConfirmAutobidController extends GetxController{
  final List<String> optionTitles = [
    'Air Conditioning',
    'Smart Device Integration',
    'Satellite Radio',
    'Backup Camera',
    'Cruise Control',
    'Heated Mirrors',
    'Power Seats',
    'Heated Seats',
  ];

  final List<IconData> optionIcons = [
    Icons.ac_unit,
    Icons.smartphone_outlined,
    Icons.satellite_alt_outlined,
    Icons.videocam_outlined,
    Icons.speed_outlined,
    Icons.window_outlined,
    Icons.event_seat_outlined,
    Icons.event_seat_outlined,
  ];
}