int reverseNumber(int num) {
  int reversed = 0;

  while (num != 0) {
    int digit = num % 10; 
    reversed = reversed * 10 + digit;  
    num ~/= 10;  
  }

  return reversed;
}

void main() {
  int num = 12345;
  print(reverseNumber(num));  
}
