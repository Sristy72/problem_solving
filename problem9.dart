import 'dart:io';

main(){
  String time = stdin.readLineSync()!;
  timeConversion(time);
}
timeConversion(String time){
  String period = time.substring(8, 10);
  int hour = int.parse(time.substring(0, 2));

  if(period == 'AM' && hour == 12){
   
      hour = 0;
    
  }
  else{
    hour = 12 + hour;
  }
  print('${hour.toString().padLeft(2, '0')}${time.substring(2, 8)}');
}