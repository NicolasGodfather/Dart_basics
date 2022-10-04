import 'package:flutter/material.dart';

// 2. Реализуйте методы для преобразования целых чисел из десятичной системы в двоичную и обратно.

void main() {
  ///test From Decimal To Binary
  convertFromDecimalToBinary(100); // 1100100
  convertFromDecimalToBinary(101); // 1100101
  convertFromDecimalToBinary(102); // 1100110
  convertFromDecimalToBinary(103); // 1100111
  convertFromDecimalToBinary(104); // 1101000
  convertFromDecimalToBinary(105); // 1101001
  ///test From Binary To Decimal
  convertFromBinaryToDecimal("1100100"); // 100
  convertFromBinaryToDecimal("1100101"); // 101
  convertFromBinaryToDecimal("1100110"); // 102
  convertFromBinaryToDecimal("1100111"); // 103
  convertFromBinaryToDecimal("1101000"); // 104
  convertFromBinaryToDecimal("1101001"); // 105
}

String convertFromDecimalToBinary(final decimalNumber) {
  final binaryNumber = decimalNumber.toRadixString(2);
  debugPrint("The binary of decimalNumber = $decimalNumber, is: $binaryNumber");
  return binaryNumber;
}

int convertFromBinaryToDecimal(final binaryNumber) {
  final decimalNumber = int.parse(binaryNumber, radix: 2);
  debugPrint("The decimalNumber of binary = $binaryNumber, is: $decimalNumber");
  return decimalNumber;
}
