import 'dart:io';

import 'dart:math';

void main() {
  List<int> list = GenerateRandom(5, 50);
  print(list);
}

List<int> GenerateRandom(int count, max) {
  List<int> numbers = new List();

  for (var i = 0; i < count; i++) {
    numbers.add(Random().nextInt(max));
  }
  return numbers;
}
