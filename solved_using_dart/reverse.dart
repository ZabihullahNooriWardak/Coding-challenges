int reverseNumber(int num) {
  int reversed = 0;

  while (num != 0) {
    int digit = num % 10;  // Extract last digit
    reversed = reversed * 10 + digit;  // Append digit to reversed number
    num ~/= 10;  // Remove last digit from original number
  }

  return reversed;
}

void main() {
  int num = 12345;
  print(reverseNumber(num));  // Output: 54321
}
