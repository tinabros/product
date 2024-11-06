import 'dart:ffi';
import 'dart:io';

void main() {
  List<Map<String,dynamic>>products = [];
  double totalGrand = 0;
  int nextId = 1;
  while (true) {

    stdout.write('Enter Product Name : ');
    String name = stdin.readLineSync()!;

    stdout.write('Enter Product Qty: ');
    int qty = int.parse(stdin.readLineSync()!);

    stdout.write('Enter Product Price: ');
    double price = double.parse(stdin.readLineSync()!);

    stdout.write('Enter Product Discount(%): ');
    double discount = double.parse(stdin.readLineSync()!);
    products.add({
      'id': nextId++,
      'name': name,
      'qty': qty,
      'price': price,
      'discount': discount,

    });
    stdout.write("Do you want to continue: [y/n]");
    String message = stdin.readLineSync()!;
    if(message == "y"){
      continue;
    }else{
      break;
    }

  }
  print('==========================');
  print('ID    Name    Qty   Price   Discount(%)   Sub total');
  for (var product in products) {
    double subtotal = product['qty'] * calculateDiscount(product['price'], product['discount']);
    totalGrand += subtotal;
    print('${product['id']}     ${product['name']}    ${product['qty']}     ${product['price']}\$     ${product['discount']}             ${subtotal}\$');
  }

  double totalGrandRiel = convertToRiel(totalGrand);
  print('------------------------------');
  print('Total Grand (\$)= ${totalGrand.toStringAsFixed(2)}\$');
  print('Total Grand (Riel)= ${totalGrandRiel.toStringAsFixed(2)} riel');
}
double calculateDiscount(double price, double discountPercentage) {
  double discount = price * (discountPercentage / 100);
  double discountedPrice = price - discount;
  return discountedPrice;
}

double convertToRiel(double amountInUsd) {
  const double exchangeRate = 4100; // 1 USD = 4,100 Riel
  return amountInUsd * exchangeRate;
}