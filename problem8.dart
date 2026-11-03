import 'dart:io';

main(){
  stdout.write("Enter the number of candles: ");
  List<int> candles = stdin.readLineSync()!.split(" ").map(int.parse).toList();
  birthdayCakeCandles(candles);
}

birthdayCakeCandles(List<int> candles){
  int tallest = candles.reduce((a,b) => a>b?a:b);
  int count = candles.where((c) => c == tallest).length;
  print(count);
}