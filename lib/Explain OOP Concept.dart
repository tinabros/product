//1.Class and Object
// class Animal {
//   String? name; //property
//   void display() {
//     print("Woof");
//   }
// }
// void main(){
//   Animal toy = Animal();
//   toy.name = "Dog";// Set the name property of the animal object to "Dog"
//   toy.display();
// }

// 2.Inheritance
// class Car {
//   // Properties
//   String? name;
//   double? price;
// }
// class Tesla extends Car {
//   // Method to display the values of the properties
//   void display() {
//     print("Name: ${name}");
//     print("Price: ${price}");
//   }
// }
// void main() {
//   // Create an object of Tesla class
//   Tesla t = new Tesla();
//   // setting values to the object
//   t.name = "Tesla Model 3";
//   t.price = 50000.00;
//   // Display the values of the object
//   t.display();
// }

//3.Encapsulation
// class Employee {
//   // Private property
//   var _name;
//
//   // Getter method to access private property _name
//   String getName() {
//     return _name;
//   }
//   // Setter method to update private property _name
//   void setName(String name) {
//     this._name = name;
//   }
// }
// void main() {
//   var employee = Employee();
//   employee.setName("Jack");
//   print(employee.getName());
// }

//4.Access Modifiers
// class Person {
//   String? name;
//   int? _age;
//   void _greet() {
//     print('Hello, my name is $name and I am $_age years old.');
//   }
//   void introduce() {
//     name = 'aiyarete';
//     _age = 30;
//     _greet(); // Hello, my name is aiyarete and I am 30 years old.
//   }
// }
// void main() {
//   var person = Person();
//   person.introduce();
// }

//5.Override data member
class Food {
  // Private field
  String _name = "Oudong";
  // Getter for the field
  String get name => _name;
  // Setter for the field
  set name(String value) => _name = value;
}
class Amok extends Food {
  // Override the getter
  @override
  String get name => "Kathiew"; // This hides the parent class's name getter
}
void main() {
  Amok coke = Amok();
  print(coke.name); // This prints "Kathiew"
}
