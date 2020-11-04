import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final topProvider = ChangeNotifierProvider((ref) => _TopScreenNotifier());

class _TopScreenNotifier with ChangeNotifier {
  var _count = 0;
  int get count => _count;

  void increment() {
    print("sadf");
    _count++;
    print(_count);
    notifyListeners();
  }
}
