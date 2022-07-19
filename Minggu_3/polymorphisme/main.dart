import 'persegi.dart';
import 'lingkaran.dart';
import 'segitiga.dart';

void main(List<String> args){
    Segitiga segitiga = new Segitiga(4, 7, 9);
    Persegi persegi = new Persegi(9,8);
    Lingkaran lingkaran = new Lingkaran(15);

    print ("Luas Segitiga : ${segitiga.luas()}");
    print ("Keliling Segitiga : ${segitiga.keliling()}");
    print ("Luas Persegi : ${persegi.luas()}");
    print ("Keliling Persegi : ${persegi.keliling()}");
    print ("Luas Lingkaran : ${lingkaran.luas()}");
    print ("Keliling Lingkaran : ${lingkaran.keliling()}");
}

