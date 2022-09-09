
  import 'dart:io';
  import 'Data.dart';
  import 'pro.dart';
  import 'Student.dart';
  import 'Teacher.dart';
  class Manager extends Data {
    int _managerPassword = 1234 ;
    int numberOfTries = 5 ;
    static int numberOfStudents = 0 ;
   
   void StudentManage(){
    while(true){
        print('To StudentMange Select:\n1 => Add new Student \n2 => View Student by ID \n3 => View All Students \n4 => Remove Student \n5 => Go Back');
        int select =int.parse(stdin.readLineSync()!); 
        
        if(select==1){

          print('Enter Student ID :');
            int id_student = int.parse(stdin.readLineSync()!);
          
           print('Enter Student Name :');
             String name_student = stdin.readLineSync()!;
           
           print('Enter Student Age :');
            int age_student = int.parse(stdin.readLineSync()!);
           
           print('Enter Student Gender :');
           String gender_student = stdin.readLineSync()!;

            Student d = Student.Add(id_student , name_student ,age_student, gender_student);
                  print('Student record added Successfully');
                  numberOfStudents++;
        }

        else if(select==2){


          print('Enter the Student ID: ');
          int id_check = int.parse(stdin.readLineSync()!);

          for(int i=0; i<Student.Students.length; i++)
          { if(id_check == Student.Students[i]["id"]){
            print(Student.Students[i]);
          }




        }}
        else if (select==3){  
          for (int j = 0; j<Student.Students.length; ++j)
          {
            print(Student.Students[j]);
          }

        }
        else if(select==4){
          print('Enter the Student ID: ');
          int id_checkRemove = int.parse(stdin.readLineSync()!);
          for(int i=0; i<Student.Students.length; i++)

          { if(id_checkRemove == Student.Students[i]["id"]){
           Student.Students.removeAt(i);

          }
          else 
          continue ;
          }


        }
        else if (select==5){
          ManagerPanel() ;
        }
        else {
          print('Wrong Selection.. please, Try Again ');
        }
      }}


     void TeacherManage(){
      while(true){
        print('To TeacherMange Select:\n1 => Add new Teacher \n2 => View Teacher by ID \n3 => View All Teachers \n4 => Remove Teacher \n5 => Go Back ');
        int select =int.parse(stdin.readLineSync()!); 
        if(select==1){

          print('Enter Teacher ID :');
            int id_teacher = int.parse(stdin.readLineSync()!);
          
           print('Enter Teacher Name :');
             String name_teacher = stdin.readLineSync()!;
           
           print('Enter Teacher Age :');
            int age_teacher = int.parse(stdin.readLineSync()!);
           
           print('Enter Teacher Gender :');
           String gender_teacher = stdin.readLineSync()!;

           print('Enter Teacher Subject :');
           String subject_teacher = stdin.readLineSync()!;

            Teacher d = Teacher.Add(id_teacher , name_teacher ,age_teacher, gender_teacher,subject_teacher);
                  print('Teacher record added Successfully');
                  numberOfStudents++;
        }

        else if(select==2){


          print('Enter the Teacher ID: ');
          int id_check = int.parse(stdin.readLineSync()!);

          for(int i=0; i<Teacher.Teachers.length; i++)
          { if(id_check == Teacher.Teachers[i]["id"]){
            print(Teacher.Teachers[i]);
          }




        }}
        else if (select==3){  
          for (int j = 0; j<Teacher.Teachers.length; ++j)
          {
            print(Teacher.Teachers[j]);
          }

        }
        else if(select==4){
          print('Enter the Teacher ID: ');
          int id_checkRemove = int.parse(stdin.readLineSync()!);
          for(int i=0; i<Teacher.Teachers.length; i++)

          { if(id_checkRemove == Teacher.Teachers[i]["id"]){
           Teacher.Teachers.removeAt(i);

          }
          else 
          continue ;
          }


        }
        else if (select==5){
          ManagerPanel() ;
        }
        else {
          print('Wrong Selection.. please, Try Again ');
        }
      }}


      void ManagerPanel(){
        while(true){
        print ('Select Number: \n1 => Manage Students \n2 => Manage Teachers \n3 => Go Back .. ');
        int selectManage = int.parse(stdin.readLineSync()!);
        if(selectManage == 1){
          StudentManage();
        }
        else if (selectManage==2){
          TeacherManage();
        }
        else if(selectManage== 3){
          main();
        }
        else {
          print('Wrong Selection ... please Try again');
        }
        }
      }
      
      Manager(int id , String name, int age , String gender  ):super( id , name , age , gender){
        
      print('Welcome in Manager Section');
      while(numberOfTries !=0){
      print('please, Enter Your Password ');
      int Password = int.parse(stdin.readLineSync()!);
      if(_managerPassword == Password ){
        print('Correct');
        print('Welcome Manager\n\n');
        ManagerPanel();
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

    } 

    set admin (int admin){
      this._managerPassword =admin ;
    }
    int get admin {
      return _managerPassword ;
    }
   
  }