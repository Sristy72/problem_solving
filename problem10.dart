import 'dart:io';

main(){
  int n = int.parse(stdin.readLineSync()!);
  List<int> grades = [];
  for(int i = 0; i < 4; i++){
    grades.add(int.parse(stdin.readLineSync()!));
  }
  gradingStudents(grades);
}

gradingStudents(List<int> grades){
  List<int> roundedGrades = [];
  for(int grade in grades){
    if(grade < 38){
      roundedGrades.add(grade);
    }else{
      int nextMultiple = (grade /5).ceil() * 5;
      if(nextMultiple - grade < 3){
        roundedGrades.add(nextMultiple);
      }else{
        roundedGrades.add(grade);
      }
    }
  }
  for(int roundedGrade in roundedGrades){
    print('Output:$roundedGrade');
  }
}