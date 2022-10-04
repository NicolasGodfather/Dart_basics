import 'package:flutter/material.dart';

// 1. Реализуйте методы вычисления НОД и НОК целых чисел.
// Реализуйте метод, который разбивает число на простые множители и возвращает их.
// return a < b ? getGCD(b, a % b) : getGCD(a, b % a);

void main() {
  ///test GCD
  getGCD(15, 20, true); // 5
  getGCD(20, 25, true); // 5
  getGCD(16, 64, true); // 16
  getGCD(64, 16, true); // 16
  getGCD(64, 48, true); // 16
  getGCD(64, 44, true); // 4
  getGCD(12, 30, true); // 6
  getGCD(30, 12, true); // 6

  ///test LCM
  getLCM(15, 20); // 60
  getLCM(20, 25); // 100
  getLCM(16, 64); // 64
  getLCM(64, 16); // 64
  getLCM(64, 48); // 192
  getLCM(64, 44); // 704
  getLCM(12, 30); // 60
  getLCM(30, 12); // 60

  ///test Factorials
  getFactorials(5); // 120
  getFactorials(6); // 720
  getFactorials(7); // 5040
  getFactorials(8); // 40320
  getFactorials(9); // 362880
  getFactorials(10); // 3628800
}

/// GREATEST COMMON DIVISOR
int getGCD(int a, int b, bool needPrint) {
  int c = 0;
  // x1 must be bigger than x2
  int x1 = a;
  int x2 = b;

  if (a < b) {
    x1 = b;
    x2 = a;
  }
  c = x1 % x2;
  if (c == 0) {
    if (needPrint) {
      debugPrint("GREATEST COMMON DIVISOR numbers of $a & $b is: $x2");
    }
    return x2;
  } else {
    return getGCD(x2, c, needPrint);
  }
}

/// LEAST COMMON MULTIPLE
int getLCM(int a, int b) {
  // x1 must be bigger than x2
  int x1 = a * b; // 15 * 20 = 300
  int x2 = getGCD(a, b, false); // 15 + 20 = 45
  int lcm = x1 ~/ x2; // 60
  debugPrint("LEAST COMMON MULTIPLE numbers of $a & $b is: $lcm");
  return lcm;
}

int getFactorials(int number) {
  int i = 1;
  int fact = 1;
  for (i; i <= number; i++) {
    fact = fact * i;
  }
  debugPrint("Factorial of $number is: $fact");
  return fact;
}
