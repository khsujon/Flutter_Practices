void main(){

  var map_1={
    'key1':'Value1',
    'key2':'Value2',
    'key3':'Value3',
    'key4':3,
    'key5':4.0,
    'key6':true
  };
  print(map_1);

  //fetch value of map
  print(map_1['key3']);

  //add value in map

  map_1['Key7']='addedValue';
  print(map_1);

  //another way to create map
  var map_2= Map();
  map_2['Name']='Kamrul';
  map_2['Age']=24;
  map_2['ExperienceYear']=3;
  map_2['Rating']=5.0;
  print(map_2);

  //some map operations
  print(map_1.isNotEmpty);
  print(map_1.isEmpty);
  print(map_1.length);
  print(map_1.keys);
  print(map_1.values);
  print(map_2.containsKey('Name'));
  print(map_2.containsValue('kamrul'));
  map_1.remove('key5');
  print(map_1);
  

}