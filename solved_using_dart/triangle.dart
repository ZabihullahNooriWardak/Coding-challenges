void main() {
  print(triangle());
}

triangle() {
  for (int i = 1; i <= 5; i++) {
    String star = "";
    for (int j = 1; j <= i; j++) {
      star += "*";
    }
    print(star);
  }
}
