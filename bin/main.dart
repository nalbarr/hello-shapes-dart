import 'package:hello_shapes_dart/foo.dart' as foo;
import 'package:hello_shapes_dart/shapes.dart' as shapes;

class Rectangle {
  String _name;
  double _base;
  double _side;
  Rectangle(String name, double base, double side) {
    _name = name;
    _base = base;
    _side = side;
  }
  String getName () {
    return _name;
  }
  double getArea() {
    return _base * _side;
  }
}

main(List<String> arguments) {
	print("hello, shapes");
	
	foo.bar();

  // local struct and functions
  var rectangle = Rectangle("rectangle", 3.0, 5.0);
  // NOTE: (lack of) Functional thinking pattern
  // - OOP: object instance + behavior/method call requiring state
  // to be passed to private fields via constructor
  // instead of
  // - FP: function applied to data structure
  print("r.type: " + rectangle.runtimeType.toString() +
  "; t.name: " + rectangle.getName() +
  "; t.area: " + rectangle.getArea().toString());

	// import classes from external imported package
	var square = shapes.Square("square", 4.0);
	var circle = shapes.Circle("circle", 3.0);
	var triangle = shapes.Triangle("triangle", 3.0, 5.0);

	List externalShapes = [square, circle, triangle];
	for (shapes.Shape s in externalShapes) {
		print("s.type: " + s.runtimeType.toString() +
			"; t.name: " + s.getName() +
			"; t.area: " + s.getArea().toString());
	}
}
