import 'dart:io';

void main() {
  stdout.write('Enter String: ');
  String? input = stdin.readLineSync();

  // Check if input is not null
  if (input != null && input.isNotEmpty) {
    Map<String, int> charCount = {};

    // Iterate through each character in the string
    for (int i = 0; i < input.length; i++) {
      String char = input[i];

      // Skip spaces
      if (char == ' ') {
        continue;
      }

      if (charCount.containsKey(char)) {
        charCount[char] = charCount[char]! + 1;
      } else {
        charCount[char] = 1;
      }
    }

    // Print the results
    print('-------------------');
    print('Char Count:');
    charCount.forEach((char, count) {
      print('  $char: $count');
    });
  } else {
    print('No input provided.');
  }
}
