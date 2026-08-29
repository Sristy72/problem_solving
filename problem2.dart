import 'dart:io';

main() {
  stdout.write('Enter Alices ratings: ');
  List<int> a = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  stdout.write('Enter Bobs ratings: ');
  List<int> b = stdin.readLineSync()!.split(' ').map(int.parse).toList();

  List<int> result = compareTriplets(a, b);
  print(result);
}

List<int> compareTriplets(List<int> a, List<int> b) {
  int alice = 0;
  int bob = 0;
  for (int i = 0; i < a.length; i++) {
    if (a[i] > b[i]) {
      alice++;
    } else if (a[i] < b[i]) {
      bob++;
    } else {}
  }
  return [alice, bob];
}
