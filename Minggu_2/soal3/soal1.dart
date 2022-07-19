void main() {
  for (int i = 1; i <= 20; i++) {
    if (i % 2 == 1) {
      if (i % 3 == 0) {
        print('- I Love Coding');
      } else {
        print('- Santai');
      }
    } else if (i % 2 == 0) {
      print('- Berkualitas');
    }
  }
}
