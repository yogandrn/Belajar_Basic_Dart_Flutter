import 'dart:io';

void main(List<String> args) {
  print("masukan nama hari :");
  String hari = stdin.readLineSync()!;

  switch (hari) {
    case "Senin":
      print(
          "Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.");
      break;
    case "Selasa":
      print(
          "Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.");
      break;
    case "Rabu":
      print(
          "Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.");
      break;
    case "Kamis":
      print(
          "Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.");
      break;
    case "Jumat":
      print("Hidup tak selamanya tentang pacar.");
      break;
    case "Sabtu":
      print("Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.");
      break;
    case "Minggu":
      print(
          "Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.");
      break;
    default:
      print("Tidak ada Quotes untuk hari ini :v");
      break;
  }
}
