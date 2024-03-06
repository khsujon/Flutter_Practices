import 'dart:io';
void main(){
  //for loop
  for(int i=0;i<=5;i++)
    {
      var a=1;
      a=a+i;
      print('print for from loop: $a');
    }

  // do while loop- at least one time execute although the condition is false
  int no=10;
  do{
    print('No is $no');

  }while(no<5);

  // while loop- only execute when condition true
  while(no<=20)
    {
      print("No is $no");
      no++;
    }

}