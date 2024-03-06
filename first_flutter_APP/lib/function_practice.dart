
import 'dart:io';

void main(){

  print ('Welcome to Dart World!!');

  var myC=MyClass();
  print(myC.Add(6,4));
  myC.printName("Kamrul");

  myC.printName("Hasan");


}

class MyClass{


  MyClass(){
    print('MyClass Object is created!!!');
  }

  void printName(String name) //function declaration
  {
    print("Hi, $name"); //Definition
  }

  int Add(int a,int b){
    int sum=a+b;
    return sum;
  }


}