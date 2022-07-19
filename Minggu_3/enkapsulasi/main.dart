import 'lingkaran.dart';

void main(List<String> args){
  double luasLingkaran; 
  Lingkaran lingkaran = new Lingkaran(); 
  lingkaran.setJari(-10); 

  luasLingkaran = lingkaran.hitungLuas(); 
  print(luasLingkaran); 
}

