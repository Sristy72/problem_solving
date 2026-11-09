import 'dart:io';

main(){
  stdout.write("Enter the starting and ending points of Sam's house: ");
  List<int> numbers = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  int s = numbers[0];
  int t = numbers[1];

  stdout.write("Enter the location of the apple tree and orange tree: ");
  List<int> trees = stdin.readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  int a = trees[0];
  int b = trees[1];

  stdout.write("Enter the number of apples and oranges: ");
  List<int> fruits = stdin.readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  int m = fruits[0];
  int n = fruits[1];

stdout.write("Enter the distances of apples: ");
  List<int> applesDistance = stdin.readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();
  stdout.write("Enter the distances of oranges: ");
  List<int> orangesDistance = stdin.readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();

  countApplesAndOranges(s, t, a, b, applesDistance, orangesDistance);
}

countApplesAndOranges(
  int s, int t, int a, int b, List<int> applesDistance, List<int> orangesDistance
){
  int applesCount = 0;
  int orangeCount = 0;

  for(int apple in applesDistance){
    int applePosition = a + apple;
    if(applePosition >= s && applePosition <= t){
      applesCount++;
    }
  }

  for(int orange in orangesDistance){
    int orangePosision = b + orange;
    if(orangePosision >=s && orangePosision <= t){
      orangeCount++;
    }
  }
  print(applesCount);
    print(orangeCount);
}