/* Author : Tahmid Al Mamun (207) */

void main() {
  for (int x = 1; x <= 9; x++) {
    print("Table of $x");

    for (int y = 1; y <= 10; y++) {
      print("$x x $y = ${x * y}");
    }

    print(""); // line gap
  }
}