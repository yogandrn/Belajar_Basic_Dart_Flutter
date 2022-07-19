import 'dart:io';

void main(List<String> args) {
  print("masukan nama anda :");
  String nama = stdin.readLineSync()!;
  print("masukan peran anda ((1)Penyihir | (2)Guard | (3)Warewolf) :");
  String peran = stdin.readLineSync()!;

  // if (nama == "" && peran == "") {
  //   print("Masukkan nama dan peran !");
  // } else {
  //   if (nama == "") {
  //     print("Nama harus diisi!");
  //   } else if (peran == "") {
  //     print("Halo " + nama + ", Pilih peran untuk bermain!");
  //   } else if (peran == "Penyihir") {
  //     print("Selamat Datang di Dunia Warewolf" +
  //         nama +
  //         ", Halo Penyihir " +
  //         nama +
  //         ", kamu dapat melihat siapa yang menjadi werewolf");
  //   } else if (peran == "Guard") {
  //     print("Selamat Datang di Dunia Warewolf" +
  //         nama +
  //         ", Halo Guard " +
  //         nama +
  //         ", kamu dapat melihat siapa yang menjadi werewolf");
  //   } else if (peran == "Warewolf") {
  //     print("Selamat Datang di Dunia Warewolf" +
  //         nama +
  //         ", Halo Warewolf " +
  //         nama +
  //         ", kamu dapat melihat siapa yang menjadi werewolf");
  //   }
  // }

  if (nama == "") {
    print('Nama harus diisi');
  } else if (peran == "") {
    print('Pilih peran untuk bermain');
  } else if (nama == "" && peran == "") {
    print("Masukkan nama dan peran !");
  } else {
    if (peran == "1") {
      print("Selamat Datang di Dunia Warewolf" +
          nama +
          ", Halo Penyihir " +
          nama +
          ", kamu dapat melihat siapa yang menjadi werewolf");
    } else if (peran == "2") {
      print("Selamat Datang di Dunia Warewolf" +
          nama +
          ", Halo Guard " +
          nama +
          ", kamu akan membantu melindungi temanmu dari serangan werewolf");
    } else if (peran == "3") {
      print("Selamat Datang di Dunia Warewolf" +
          nama +
          ", Halo Warewolf " +
          nama +
          ", Kamu akan memakan mangsa setiap malam!");
    }
  }
}
