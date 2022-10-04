import 'package:flutter/material.dart';

// 3. Реализуйте метод, который принимает строку слов, разделённых пробелами.
// Задача — найти в данной строке числа и вернуть коллекцию num этих чисел.

void main() {
  findNumbersFromStrings(" wefwe rewewf rwr "); //
  findNumbersFromStrings("101 wef we eew"); //
  findNumbersFromStrings("102 sdfe 102 wef rwr 0"); //
  findNumbersFromStrings("103 qefvq 10332 fdvev rwr 2333"); //
  findNumbersFromStrings("104 adsf  104 wefwef we 23r 23r"); //
  findNumbersFromStrings("105 qvervqerv 105 ve3qerfbv tht 23r3"); //
}

List<int> findNumbersFromStrings(String line) {
  List<int> list = [];
  List<String> array = line.split(" ");
  for (var item in array) {
    var x = int.tryParse(item);
    if (x is int) {
      list.add(x);
    }
  }
  debugPrint("The number size of list with ('$line') is: ${list.length}");
  for (var i in list) {
    debugPrint("***The items  is: ${i} ");
  }
  return list;
}
