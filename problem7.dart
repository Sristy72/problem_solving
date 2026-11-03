import 'dart:io';

main(){
    List<int> arr = stdin.readLineSync()!.split(" ").map(int.parse).toList();
    miniMaxSum(arr);

}
miniMaxSum(List<int> arr){
    arr.sort();
    int minSum = 0;
    int maxSum = 0;
    for(int i = 0; i<4; i++){
        minSum = minSum + arr[i];
        maxSum = maxSum + arr[i +1];
    }
    print('$minSum $maxSum');
}