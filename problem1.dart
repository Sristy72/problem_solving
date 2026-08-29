//Given an array of integers, find the sum of its elements.
import 'dart:io';

main() {
  stdout.write('Enter the number of array: ');
  int n = int.parse(stdin.readLineSync()!);

  stdout.write('Enter $n numbers separated by spaces: ');
  List<int> ar = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  int result = simpleArraySum(ar);
  print(result);
}

int simpleArraySum(List<int> ar) {
  int sum = 0;
  for (int i = 0; i < ar.length; i++) {
    sum = sum + ar[i];
  }
  return sum;
}
