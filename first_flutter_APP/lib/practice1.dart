
import 'dart:io';
void main(){
  /*print('Welcome to Dart World!');

  stdout.write('Enter your name:');

  var name= stdin.readLineSync();

  print("Hello, $name");
*/
  var kamrul = new Human(); // class object

  //Variable Declaration
  int a;
  a=5;
  print(a);

  //Big Integer value
  BigInt b;
  b=BigInt.parse('8799834689839778979837889');
  print(b);

  //Double value

  double d=99.45;
  num n= 7834.98;//store both int and double value

  //boolean value
  bool isLogin=false;
  isLogin=true;

  //inline declaration
  String name="Kamrul";
  print(name);

  //Var and Dynamic
  //var
  var subject= "Math";
  subject= "English";

  //dynamic - multiple datatype can be store in same variable for overwrite
  var section; // if var not initialize with value ,automatically it will dynamic type
  section="c";//string
  section=7;//int
  section=false;//boolean
  dynamic sec; //dynamic can be declare




}
class Human{

  Human();

}