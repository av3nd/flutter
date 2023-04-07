abstract class Shape {
  double area();
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }
}

class Rectangle extends Shape {
  double length;
  double width;

  Rectangle(this.length, this.width);

  @override
  double area() {
    return length * width;
  }
}

void main() {
  Rectangle rectangle = Rectangle(6, 4);
  Circle circle = Circle(7);
  print("area of rectangle is ${rectangle.area()}");
  print("area of circle is ${circle.area()}");
}
