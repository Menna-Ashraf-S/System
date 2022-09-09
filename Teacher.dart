import 'Data.dart';
import 'dart:io';
import 'pro.dart';
import 'Manager.dart';
import 'Student.dart';
class Teacher extends Data {
     static List <Map> Teachers =[] ;
     static List <Map> studentsGrades = [];
     int _managerPassword = 1234 ;
    int numberOfTries = 5 ;
    
         TeacherPanel(){
          while(true){
             print('Enter Number to Select: \n1 => View Details \n2 => View Student by ID \n3 => View All Student \n4 => Add Student Grades  \n5 => Go Back to home Page');

     int selection = int.parse(stdin.readLineSync()!);
     if(selection == 1){
       print('Enter your ID: ');
          int id_check = int.parse(stdin.readLineSync()!);

          for(int i=0; i<Teacher.Teachers.length; i++)
          { if(id_check == Teacher.Teachers[i]["id"]){
            print(Teacher.Teachers[i]);
          }}
    }
    else if(selection==2){
      print('Enter Student ID: ');
          int id_check = int.parse(stdin.readLineSync()!);

          for(int i=0; i<Student.Students.length; i++)
          { if(id_check == Student.Students[i]["id"]){
            print(Student.Students[i]);
          }}

   }
    else if(selection==3){
      for (int j = 0; j<Student.Students.length; ++j)
          {
            print(Student.Students[j]);
          }

    }
    else if(selection==4){
      print('Enter Student Id :');
      int std_id = int.parse(stdin.readLineSync()!);
      print('Enter Math Grade :');
      int std_math = int.parse(stdin.readLineSync()!);
      print('Enter English Grade :');
      int std_english = int.parse(stdin.readLineSync()!);
      print('Enter Science Grade :');
      int std_science = int.parse(stdin.readLineSync()!);
      print('Enter Electronics Grade :');
      int std_electronics = int.parse(stdin.readLineSync()!);

      Map <String , dynamic > Grades = {'id':std_id ,'math':std_math,'english':std_english,'science':std_science , 'electronic':std_electronics} ;
      studentsGrades.add(Grades);
      print ('Grades added Successfully');

     }
    else if (selection == 5){
    main();
   }
    else {
    print('Wrong Selection');
  }

    }
         }
         Teacher(int id , String name, int age , String gender  ):super( id , name , age , gender){
          
while(numberOfTries !=0){
      print('please, Enter Your Password ');
      int Password = int.parse(stdin.readLineSync()!);
      if(_managerPassword == Password ){
        print('Correct');
        print('Welcome Teacher\n\n');
        TeacherPanel();
      }

      else{
        numberOfTries -- ;
        print('Wrong Password.. please, Try again You have ${numberOfTries} left');
      }
      }

      if(numberOfTries==0){
        print('Sorry, Try Again Later ..');
        exit(0);
      }
       while(true){
             print('Enter Number to Select: \n1 => View Details \n2 => View Student by ID \n3 => View All Student \n4 => Add Student Grades  \n5 => Go Back to home Page');

     int selection = int.parse(stdin.readLineSync()!);
     if(selection == 1){
       print('Enter your ID: ');
          int id_check = int.parse(stdin.readLineSync()!);

          for(int i=0; i<Teacher.Teachers.length; i++)
          { if(id_check == Teacher.Teachers[i]["id"]){
            print(Teacher.Teachers[i]);
          }}
    }
    else if(selection==2){
      print('Enter Student ID: ');
          int id_check = int.parse(stdin.readLineSync()!);

          for(int i=0; i<Student.Students.length; i++)
          { if(id_check == Student.Students[i]["id"]){
            print(Student.Students[i]);
          }}

   }
    else if(selection==3){
      for (int j = 0; j<Student.Students.length; ++j)
          {
            print(Student.Students[j]);
          }

    }
    else if(selection==4){
      print('Enter Student Id :');
      int std_id = int.parse(stdin.readLineSync()!);
      print('Enter Math Grade :');
      int std_math = int.parse(stdin.readLineSync()!);
      print('Enter English Grade :');
      int std_english = int.parse(stdin.readLineSync()!);
      print('Enter Science Grade :');
      int std_science = int.parse(stdin.readLineSync()!);
      print('Enter Electronics Grade :');
      int std_electronics = int.parse(stdin.readLineSync()!);

      Map <String , dynamic > Grades = {'id':std_id ,'math':std_math,'english':std_english,'science':std_science , 'electronic':std_electronics} ;
      studentsGrades.add(Grades);
      print ('Grades added Successfully');

     }
    else if (selection == 5){
    main();
   }
    else {
    print('Wrong Selection');
  }

    }
    }
   Teacher.Add(int id , String name, int age , String gender , String subject  ):super( id , name , age , gender){
      Map<String , dynamic>teacher  = {'id' :id  , 'name' : name, 'age':age , 'gender':gender, 'subject':subject}; 
      
      Teachers.add (teacher);
    }
  }