import 'bangun_datar.dart';

class Segitiga extends BangunDatar {
    double tinggi = 0;
    double alas = 0;
    double sisimiring = 0;

    Segitiga (double alas, double tinggi, double sisimiring) {
        this.alas = alas;
        this.tinggi = tinggi;
        this.sisimiring = sisimiring;
    }

    @override
    double luas(){
        return 0.5 * alas * tinggi;
    }

    @override
    double keliling(){
        return sisimiring + alas + tinggi;
    }
}