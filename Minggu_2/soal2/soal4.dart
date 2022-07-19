void main() {
  var tanggal = 17;
  var bulan = 6;
  var tahun = 2000;

  switch (bulan) {
    case 1:
      print("$tanggal Januari $tahun");
      break;
    case 2:
      print("$tanggal Februari $tahun");
      break;
    case 3:
      print("$tanggal Maret $tahun");
      break;
    case 4:
      print("$tanggal April $tahun");
      break;
    case 5:
      print("$tanggal Mei $tahun");
      break;
    case 6:
      print("$tanggal Juni $tahun");
      break;
    default:
      print("$tanggal $bulan $tahun");
      break;
  }
}
