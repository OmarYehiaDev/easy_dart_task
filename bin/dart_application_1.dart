import 'dart:math';

class Color {
  Color(this.value);
  final int value;
}

class View {
  int id;
  Color? color;

  View(this.id, {this.color});

  @override
  String toString() {
    return '$id';
  }
}

class Text extends View {
  final String content;
  Text(
    int id,
    this.content, {
    Color? color,
  }) : super(id, color: color);

  @override
  String toString() {
    return content;
  }
}

void main() {
  /*
    1) Create class named `Text` that extends/inherits `View` class,
        and has a `String content` property.
        Here is the Text constuctor:
        Text(int id, this.content, {Color? color}) : super(id, color: color)
    2) Create new `Text` object with the following:
      var helloText = Text(<random id>, content: 'Hello' )
  */

  var id = Random().nextInt(10000);

  var helloText = Text(id, 'Hello');

  print('hello: $helloText');
  task2();
}

void task2() {
  var numbers = List<int>.generate(
    75,
    (index) => Random().nextInt(10000),
  );

  /*
    Separate even numbers from the above `numbers` list.
    
  */
  var evenNumbers = <int>[];
  numbers.forEach(
    (e) {
      if (e.remainder(2) == 0) {
        evenNumbers.add(e);
      }
    },
  );
  print('evenNumbers: $evenNumbers');
}
