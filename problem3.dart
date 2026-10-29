// In this challenge, you need to calculate and print the sum of elements in an array,
// considering that some integers may be very large.

import 'dart:io';

main() {
  stdout.write('Enter array size :');

  int listLength = int.parse(stdin.readLineSync()!);

  stdout.write('Enter array items: ');
  List<int> listItems = stdin
      .readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();

  int sum = 0;
  for (int i = 0; i < listLength; i++) {
    sum = sum + listItems[i];
  }
  print(sum);
}
