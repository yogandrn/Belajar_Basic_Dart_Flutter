import 'dart:io';

void main(List<String> args) {
  print("masukan nama depan :");
  String first = stdin.readLineSync()!;
  print("masukan nama belakang :");
  String second = stdin.readLineSync()!;
  print("nama lengkap anda adalah :");
  print("${first}" + "${second}");
}
