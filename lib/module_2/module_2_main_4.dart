import 'package:flutter/material.dart';

// 4. Есть коллекция слов. Реализуйте метод, возвращающий Map.
// Данный Map должен соотносить слово и количество его вхождений в данную коллекцию.

const line1 = "asd asd asd dfg dfg dfg fdg we er rt";
const line2 =
    "asd asd asd dfg dfg dfg fdg we er rt asd asd asd dfg dfg dfg fdg we er rt";

void main() {
  getMaps(line1);
  getMaps(line2);
}

Map<String, int> getMaps(String line) {
  debugPrint("***");
  final map = <String, int>{};
  List<String> lines = line.split(" ");
  for (var item in lines) {
    int counter = 0;
    for (var i in lines) {
      if (i == item) {
        counter++;
      }
    }
    map[item] = counter;
  }

  for (var m in map.entries) {
    debugPrint("Map key:${m.key}, is repeating value: ${m.value.toString()}");
  }
  return map;
}
