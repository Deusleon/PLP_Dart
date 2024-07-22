import 'dart:io';

// Base class
class Animal {
  String name;
  int age;

  Animal(this.name, this.age);

  void speak() {
    print('$name makes a sound.');
  }
}

// Derived class
class Dog extends Animal {
  String breed;

  Dog(String name, int age, this.breed) : super(name, age);

  @override
  void speak() {
    print('$name barks.');
  }
}

// Interface
abstract class Pet {
  void play();
}

// Class implementing the interface
class Cat extends Animal implements Pet {
  String color;

  Cat(String name, int age, this.color) : super(name, age);

  @override
  void speak() {
    print('$name meow.');
  }

  @override
  void play() {
    print('$name plays with a ball.');
  }
}

void printAges(List<Animal> animals) {
  for (var animal in animals) {
    print('${animal.name} is ${animal.age} years old.');
  }
}

void main() {
  final dog = Dog('Puppy', 3, 'Black');

  final cat = Cat('Pusicat', 2, 'White');

  dog.speak();
  cat.speak();
  cat.play();

  final animals = [dog, cat];
  printAges(animals);
}
