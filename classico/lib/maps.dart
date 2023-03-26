import 'package:flutter/physics.dart';

void main(){

  // first method to create a map is using var and giving unique id to each element just like dictionary
  var map_name = {
    'Key1': 'Value1',
    'Key2': 2,
    'key3': 3.0,
    'key4': true,
  };

  var map = {
    'Name': 'Value1',
    'YearOfExperience':2,
    'Avg.Rating': 3.0,
    'CanLocateToOffice': true
  };
  map['Name'] = 'Raman';

  // Second method to create a map is by decalring a variable with Map() function
  var mapName = Map();
  mapName['Name'] = "Raman";
  mapName['YearOfExperience'] = 2;
  mapName['Avg.Rating'] = 3.0;
  mapName['CanLocateToOffice'] = true;


  print(mapName.isNotEmpty);
  print(mapName.isEmpty);
  print(mapName.length);
  print(mapName.keys);
  print(mapName.values);
  print(mapName.containsKey('Name'));
  print(mapName.containsValue(false));
  print(mapName.remove('CanLocateToOffice'));

  print(mapName);
  // print(map_name);
}