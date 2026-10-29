// Given a square matrix, calculate the absolute difference between the sums of its diagonals.

import 'dart:io';

main() {
  stdout.write('Enter number of rows and columns: ');
  int n = int.parse(stdin.readLineSync()!);

  List<List<int>> matrix = [];
  for (int i = 0; i < n; i++) {
    matrix.add(stdin.readLineSync()!.split(' ').map(int.parse).toList());
  }
  int primaryDiagonal = 0;
  int secondaryDiagonal = 0;
  for (int i = 0; i < n; i++) {
    primaryDiagonal = primaryDiagonal + matrix[i][i];
    secondaryDiagonal = secondaryDiagonal + matrix[i][n - 1 - i];
  }

  print((primaryDiagonal - secondaryDiagonal).abs());
}
