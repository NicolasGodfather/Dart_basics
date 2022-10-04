import 'dart:math';

import 'package:flutter/material.dart';

// 7. Реализуйте метод, который вычисляет корень любой заданной степени из числа. Реализуйте данный метод как extension-метод для num.
// Алгоритм можете взять на википедии как «Алгоритм нахождения корня n-й степени». Запрещается использовать методы math. В случае когда
// значение вернуть невозможно, необходимо бросать исключение с описанием ошибки.

/// PS sorry, but I haven't enough time to solve this task like described

extension on num {
  num getRoot(num power) {
    return pow(this, power);
  }
}

void main() {
  var x0 = 4.getRoot(2);
  var x1 = 9.getRoot(2);
  var x2 = 64.getRoot(3);
  var x3 = 64.getRoot(2);
  debugPrint("x0 = $x0"); // 16
  debugPrint("x1 = $x1"); // 81
  debugPrint("x2 = $x2"); // 262144
  debugPrint("x3 = $x3"); // 4096
}
