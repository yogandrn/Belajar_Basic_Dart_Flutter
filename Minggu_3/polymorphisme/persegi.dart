import 'bangun_datar.dart';

class Persegi extends BangunDatar {
    double sisi1 = 0;
    double sisi2 = 0;

    Persegi (double sisi1, double sisi2) {
        this.sisi1 = sisi1;
        this.sisi2 = sisi2;
    }

    @override
    double luas(){
        return sisi1 * sisi2;
    }

    @override
    double keliling(){
        return 2 * sisi1 + 2 * sisi2;
    }
}