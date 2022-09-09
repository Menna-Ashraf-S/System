import 'Data.dart';
import 'dart:io';
import 'pro.dart';
import 'Manager.dart';
import 'Teacher.dart';
class Student extends Data {
  static List <Map> Students =[] ;
    
         Student(int id , String name, int age , String gender  ):super( id , name , age , gender){

       while(true){
     print('Enter Number to Select: \n1 => View Grades \n2 => View Details \n3 => Back');
     int selection = int.parse(stdin.readLineSync()!);
     if(selection == 1){
      print('Enter your ID: ');
          int id_grade = int.parse(stdin.readLineSync()!);

          for(int i=0; i<Teacher.studentsGrades.length; i++)
          { 
           if(id_grade == Teacher.studentsGrades[i]["id"])
             {
            print(Teacher.studentsGrades[i]); }}
    }
    else if(selection==2){
      print('Enter your ID: ');
          int id_check = int.parse(stdin.readLineSync()!);

          for(int i=0; i<Student.Students.length; i++)
          { if(id_check == Student.Students[i]["id"]){
            print(Student.Students[i]);
          }}

   }
  
    else if (selection == 3){
    main();
   }
    else {
    print('Wrong Selection');
  }

    }
    }
   Student.Add(int id , String name, int age , String gender  ):super( id , name , age , gender){
      Map<String , dynamic> student = {'id' :id  , 'name' : name, 'age':age , 'gender':gender}; 
      
      Students.add (student);
    }
}
  
  