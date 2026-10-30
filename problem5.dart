import 'dart:io';

main() {
  stdout.write('Enter the array size');

  int arraySize = int.parse(stdin.readLineSync()!);
  List<int> items = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  int positive = 0;
  int negative = 0;
  int zero = 0;

  for (int i = 0; i < arraySize; i++) {
    if (items[i] > 0) {
      positive++;
    } else if (items[i] < 0) {
      negative++;
    } else {
      zero++;
    }
  }

  print((positive / arraySize).toStringAsFixed(6));
  print((negative / arraySize).toStringAsFixed(6));
  print((zero / arraySize).toStringAsFixed(6));
}
