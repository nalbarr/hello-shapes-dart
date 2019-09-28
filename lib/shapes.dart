abstract class Shape {
  String getName();
  double getArea();
}

class Square extends Shape {
  String _name;
  double _side;
  Square(String name, double side) {
    _name = name;
    _side = side;
  }
  String getName () {
    return _name;
  }
  double getArea() {
    return _side * _side;
  }
  // NA. String formatting via interpolation.
  String toString() {
    return "name: $_name; side: $_side";
  }
}

class Circle implements Shape {
  String _name;
  double _radius;
  Circle(String name, double radius) {
    _name = name;
    _radius = radius;
  }
  String getName () {
    return _name;
  }
  double getArea() {
    return 3.14 * _radius;
  }
}

class Triangle implements Shape {
  String _name;
  double _base;
  double _side;
  Triangle(String name, double base, double side) {
    _name = name;
    _base = base;
    _side = side;
  }
  String getName() {
    return _name;
  }
  double getArea() {
    return 0.5 * _base * _side;
  }
  String extensionMethod() {
    return "extension.";
  }
}
