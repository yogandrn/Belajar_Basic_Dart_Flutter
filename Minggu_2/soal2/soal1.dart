import 'dart:io';

void main(List<String> args) {
  print("Apakah anda ingin menginstal aplikasi ini? (Y/T) :");
  String answer = stdin.readLineSync()!;
  answer == "Y" ? print("Anda akan menginstall Flutter") : print("aborted");
}