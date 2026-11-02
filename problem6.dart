import 'dart:io';

main() {
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= n; i++) {
    String spaces = ' ' * (n - i);
    String hash = "#" * i;

    print('$spaces$hash');
  }
}