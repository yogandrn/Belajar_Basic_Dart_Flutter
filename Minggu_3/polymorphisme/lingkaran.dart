import 'bangun_datar.dart';

class Lingkaran extends BangunDatar {
    double jari2 = 0;

    Lingkaran (double jari2) {
        this.jari2 = jari2;
    }

    @override
    double luas(){
        return 3.14 * jari2 * jari2;
    }

    @override
    double keliling(){
        return 2 * 3.14 * jari2;
    }
}