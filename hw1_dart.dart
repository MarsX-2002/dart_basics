import 'dart:io';
import 'dart:math';

/// uncomment functions to see result (ONLY FUNCTIONS, NOT EXPLANATORY COMMENTS!)

void main() {
  // 1. Calculate the area of a rectangle
  calculateArea();

  // 2. Calculate the perimeter of a rectangle
  //  calculatePerimeter();

  // 3. Calculate the area of a triangle
  //  calculateAreaOfTriangle();

  // 4. Calculate the surface area of a cube
  //  calculateAreaOfCube();

  // 5. Calculate the volume of a cube
  //  calculateVolumeOfCube();

  // 6. Calculate the Arithmetic Average Of Numbers
  //  calculateArithmeticAverageOfNumbers();

  // 7. Calculate the Geometric Average Of Numbers
  //  calculateGeometricAverageOfNumbers();

  // 8. Calculate the length of a circle
  // calculateCircleLength();

  // 9. Calculate the area of a circle
  // calculateCircleArea();

  // 10. Calculate the sphere surface area
  // calculateSphereSurfaceArea();

  // 11. Calculate the sphere surface area
  // calculateSphereVolume();

  // 13. Calculate the Parallelepiped Surface Area
  // calculateParallelepipedArea();

  // 14. Calculate the hypotenuse of a triangle
  // calculateHypotenuseTriangle();

  // 15. Calculate the surface area of a cylinder
  // calculateCylinderSurfaceArea();

  // 16. Calculate the volume of a cylinder
  // calculateCylinderVolume();

  // 17. Find the digits in a number
  // findDigits();
}



int readInteger(String prompt) {
  print(prompt);
  String input = stdin.readLineSync()!;
  return int.parse(input);
}

double readDouble(String prompt) {
  print(prompt);
  String input = stdin.readLineSync()!;
  return double.parse(input);
}

void calculateArea() {
  int width = readInteger('Enter the width of the rectangle:');
  int height = readInteger('Enter the height of the rectangle:');

  int area = width * height;
  print('The area of the rectangle is $area.');
}

void calculatePerimeter() {
  int width = readInteger('Enter the width of the rectangle:');
  int height = readInteger('Enter the height of the rectangle:');

  int perimeter = 2 * (width + height);
  print('The area of the rectangle is $perimeter.');
}

void calculateAreaOfTriangle() {
  int a = readInteger('Enter the length of side a:');
  int b = readInteger('Enter the length of side b:');
  int c = readInteger('Enter the length of side c:');
  double s = (a + b + c) / 2;
  double area = sqrt(s * (s - a) * (s - b) * (s - c));
  print('The area of the triangle is $area');
}

void calculateAreaOfCube() {
  int sideLength = readInteger('Enter the length of one side:');
  num surfaceArea = 6 * pow(sideLength, 2);
  print('The surface area of the cube is $surfaceArea');
}

void calculateVolumeOfCube() {
  int sideLength = readInteger('Enter the length of one side:');
  num volume = pow(sideLength, 3);
  print('The volume of the cube is $volume');
}


void calculateArithmeticAverageOfNumbers() {
  print('Calculate the arithmetic average of any number of numbers');
  int n = readInteger('How many numbers do you want to average?');
  double sum = 0;
  for (int i = 1; i <= n; i++) {
    int x = readInteger('Enter number $i:');
    sum += x;
  }
  double average = sum / n;
  print('The arithmetic average is $average');
}

void calculateGeometricAverageOfNumbers() {
  print('Calculate the geometric average of any number of numbers');
  int n = readInteger('How many numbers do you want to average?');
  int product = 1;
  for (int i = 1; i <= n; i++) {
    int x = readInteger('Enter number $i:');
    product *= x;
  }
  num geometricAverage = pow(product, 1/n);
  print('The geometric average is $geometricAverage');
}

void calculateCircleLength() {
  print('Calculate the length of a circle');
  double radius = readDouble('Enter the radius:');
  double length = 2 * pi * radius;
  print('The length of the circle is $length');
}

void calculateCircleArea() {
  print('Calculate the area of a circle');
  double radius = readDouble('Enter the radius:');
  double area = pi * pow(radius, 2);
  print('The area of the circle is $area');
}

void calculateSphereSurfaceArea() {
  print('Calculate the sphere surface area');
  double radius = readDouble('Enter the radius:');
  double area = 4 * pi * pow(radius, 2);
  print('The sphere surface area is $area');
}

void calculateSphereVolume() {
  print('Calculate the sphere volume');
  double radius = readDouble('Enter the radius:');
  double area = 4 /3 * pi * pow(radius, 3);
  print('The sphere volume is $area');
}

void calculateParallelepipedArea() {
  print('Calculate the surface area of a parallelepiped');
  double length = readDouble('Enter the length:');
  double width = readDouble('Enter the width:');
  double height = readDouble('Enter the height:');
  double surfaceArea = 2 * (length * width + length * height + width * height);
  print('The surface area of the parallelepiped is $surfaceArea');
}

void calculateHypotenuseTriangle() {
  print('Calculate the hypotenuse of a triangle');
  double a = readDouble('Enter the a side:');
  double b = readDouble('Enter the b side:');
  num c = pow((a*a + b*b), 1/2);
  print('The hypotenuse of a triangle is $c');
}

void calculateCylinderSurfaceArea() {
  print('Calculate the surface area of a cylinder');
  double radius = readDouble('Enter the radius:');
  double height = readDouble('Enter the height:');
  num cylinderArea = 2 * pi * radius * (radius + height);
  print('The hypotenuse of a triangle is $cylinderArea');
}

void calculateCylinderVolume() {
  print('Calculate the volume of a cylinder');
  double radius = readDouble('Enter the radius:');
  double height = readDouble('Enter the height:');
  num cylinderVolume = pi * radius * radius * height;
  print('The hypotenuse of a triangle is $cylinderVolume');
}

void calculateTrapezoidArea() {
  print('Calculate the area of a trapezoid');
  double base1 = readDouble('Enter the base1:');
  double base2 = readDouble('Enter the base2:');
  double height = readDouble('Enter the height:');

  num trapezoidArea = (base1 + base2) * height / 2;
  print('The area of a trapezoid is $trapezoidArea');
}

/*
This function prints out the digits in a number,
starting from the ones place and moving rightward ->->
For example, if the input number is 1234, the output will be:
1-digit: 1
2-digit: 2
3-digit: 3
4-digit: 4
This is achieved by iteratively dividing the number by 10
to isolate each digit, adding to array,
and then printing it out from the last element to the first.
*/

void findDigits() {
  print('Find all the digits of a number');
  int number = readInteger('Enter a number:');
  List<int> digits = getDigits(number);
  print('The digits of the number $number are:');
  for (int i = digits.length - 1; i >= 0; i--) {
    print('${digits.length - i}-digit: ${digits[i]}');
  }
}

List<int> getDigits(int number) {
  List<int> digits = [];
  int quotient = number;
  int remainder;
  do {
    remainder = quotient % 10;
    digits.add(remainder);
    quotient = quotient ~/ 10;
  } while (quotient > 0);
  return digits;
}



// Copyright Mirjalol Shavkatov
