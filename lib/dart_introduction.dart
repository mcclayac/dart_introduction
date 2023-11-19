

// https://dart.dev/language

//  import 'package:'
/*

// Importing core libraries
import 'dart:math';

// Importing libraries from external packages
import 'package:test/test.dart';

// Importing files
import 'path/to/my_other_file.dart';
*/


void main() {

  print('Hello World');

  // Variables
  var name = 'Yoyager I';
  var year = 1999;
  var antennaDiameter = 3.7;
  var flyObjects = ['Jupiter','Saturn','Uramus','Neptune'];
  var image = {
    'tags': ['saturn'],
    'url': '//path/to/saaturm.jpg'
  };
  print('Variables');
  print(name);
  print(year);
  print(antennaDiameter);
  print(flyObjects);
  print(image);

  //  Variables Sub
  // https://dart.dev/language/variables

  var nameBob = 'Bob';
  // If an object isn’t restricted to a single type, specify the Object
  // type (or dynamic if necessary).
  Object nameBob2 = 'Bob';

  // Null Safety
  String? nameNotNull;  // Nullable type. Can be `null` or string.

  String nameNullAllowed;   // Non-nullable type. Cannot be `null` but can be string.

  int? lineCount;
  assert(lineCount == null);

  // If you fail to initialize a late variable, a runtime
  // error occurs when the variable is used.
  late String description;

  description = 'Tony McClay';
  print(description);

  // Late
  // This is the program's only call to readThermometer().
  late String temperature = readThermometer(); // Lazily initialized.

  // final and const
  final nameBob3 = 'Bob'; // Without a type annotation
  final String nicknameBob3 = 'Bobby';

  // nameBob3 = 'Cindy';   // error can only be set once
  const bar = 1000000; // Unit of pressure (dynes/cm2)
  const double atm = 1.01325 * bar; // Standard atmosphere


  print(year);
  // ControlFLow
  if (year >= 2001) {
    print('21st Century');
  } else if (year >= 1901) {
    print('20th Century');
  }

  print('print Objects');
  for( final object in flyObjects) {
    print(object);
  }

  print('Months');
  for (int month = 1; month <=12; month++) {
    print(month);
  }

  print('Years 2016');
  while (year < 2016) {
    print(year);
    year ++;
  }

  print("Functions");
  int fib = 20;
  int result = fibonacci(fib);
  print('Fibonacci $fib = $result');

  // A shorthand => (arrow) syntax is handy for functions 
  // that contain a single statement. This syntax is 
  // especially useful when passing anonymous functions 
  // as arguments:
  
  print('flyobjects = $flyObjects');
  //flyObjects.where((element) => false);
  flyObjects.where((name) => name.contains('turn')).forEach(print);

  // List.where
  // print list.where
  print('List.where method');
  var one = [
    {'id': 1, 'name': 'jay'},
    {'id': 2, 'name': 'jay11'},
    {'id': 13, 'name': 'jay222'}
  ];

  int newValue = 13;

  print('one = $one');
  print(one
      .where((oldValue) => newValue.toString() == (oldValue['id'].toString())));

  ///   This is for documnetation
  /// More Documentation line 2
  ///  More Documenattion line 3


  var oneRow = one
      .where((oldValue) => newValue.toString() == (oldValue['id'].toString()));

  print(oneRow);
  print('The type of oneRow is ${oneRow.runtimeType}');  // WhereIterable<Map<String, Object>>
  // print(oneRow.['']);
  // OUTPUT : ({id: 13, name: jay222})



}


int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n -1) + fibonacci(n - 2);
}


String readThermometer() {
  return '10';
}