import 'dart:io';

// void main(List<String> args) {
//   print("masukan nama depan :");
//   int first = stdin.readLineSync()!;
//   print("masukan nama belakang :");
//   String second = stdin.readLineSync()!;
//   print("nama lengkap anda adalah :");
//   print("${first}" + "${second}");
// }

void main() {
  var a = 5;
  var b = 10;

  var perkalian = a * b;
  var pembagian = a/b;
  var pengurangan = a - b;
  var penjumlahan = a + b;

  print('perkalian :' + perkalian.toString() );
  print('pembagian : ' + pembagian.toString());
  print('penjumlahan : ' + penjumlahan.toString());
  print('pengurangan: ' + pengurangan.toString());
}
