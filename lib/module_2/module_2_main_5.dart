import 'package:flutter/material.dart';

// 5. Есть коллекция строк вида ‘one, two, three, cat, dog’ или любого другого.
// Реализуйте метод, возвращающий цифры без повторений, которые
// встречаются в данной строке. Однако цифры встречаются в виде английских
// слов от zero до nine. Например, в результате строки
// ‘one, two, zero, zero’ мы получим следующий результат: [1, 2, 0].
// Если в строке есть слова, не являющиеся цифрами от 0 до 9, пропускайте их.
const String line1 = "one, two, three, cat, dog, zero";
const String line2 = "one, two, three2, cat, dog, zero";
const String line3 = "one2, two, three, cat, dog, zero, nine";
const Map<String, int> mapStringNumbers = {
  'one': 1,
  'two': 2,
  'three': 3,
  'four': 4,
  'five': 5,
  'six': 6,
  'seven': 7,
  'eight': 8,
  'nine': 9,
  'zero': 0
};
const Set<int> listNumbers = {1, 2, 3, 4, 5, 6, 7, 8, 9, 0};
const Set<String> listLines = {line1, line2, line3};

void main() {
  getNumberFromString(listLines);
}

Set<int> getNumberFromString(Set<String> line) {
  Set<int> setList = {};
  for (var item in mapStringNumbers.entries) {
    for (var lineItem in line) {
      List<String> listWords = lineItem.replaceAll(",", "").split(" ");
      for (var i in listWords) {
        if (item.key == i) {
          setList.add(item.value);
        }
      }
    }
  }
  for (var i in setList) {
    debugPrint("number: $i");
  }
  return setList;
}
