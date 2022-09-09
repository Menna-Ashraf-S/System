import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'Manager.dart';
import 'Data.dart';
import 'Teacher.dart';
import 'Student.dart';
void main(){

  while(true){

  print ('Welome to IEEE Student Records System !');

  print('Enter Number to select: \n1 => Student \n2 => Teacher \n3 => Manager \n4 => Exit ');
  int selection = int.parse(stdin.readLineSync()!);
  if(selection == 1){
    Student s = Student(0,'test',12,'test'); 
  }
  else if(selection==2){
    Teacher t =Teacher(1000 , 'Test',35, 'Test') ;
  }
  else if(selection==3){
      Manager m = Manager(0, 'Ahmed',40, 'Male') ;
  }
  else if (selection == 4){
    print('Thank You for using IEEE Student Records System !');
    exit(0);
  }
  else {
    print('Wrong Selection');
  }}


  }