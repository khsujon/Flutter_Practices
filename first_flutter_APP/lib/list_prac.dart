void main(){
  var ListName= [1,2,3,4,5,6];

  //add operation
  ListName.add(7);
  print("$ListName");

  var name= [];
  name.add("Kamrul");
  name.add("Abul");
  name.add("Kalam");

  //Add 1 list value to another
  //name.addAll(ListName);

  //insert operation
  name.insert(2, 500);
  name.insertAll(2, ListName);

  //update operation
  name[1]="Abdullah";
  
  //replace
  ListName.replaceRange(0, 3, [10,20,30,40]);
  print("$ListName");

  //remove element
  ListName.remove(7);
  print("$ListName");
  ListName.removeRange(1, 3);
  print("$ListName");
  print("$name");


  //other operation
  print("Length: ${ListName.length}");
  print("Reverse: ${ListName.reversed}");
  print("Last: ${ListName.last}");
  print("first: ${ListName.first}");
  print("Is Empty: ${ListName.isEmpty}");
  print("Is not Empty: ${ListName.isNotEmpty}");
  print("Index value: ${ListName.elementAt(2)}");
}