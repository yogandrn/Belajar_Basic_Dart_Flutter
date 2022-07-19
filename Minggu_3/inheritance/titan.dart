class Titan {
    int _powerPoint= 0;
    int get powerPoint => _powerPoint;
    set powerPoint(int value){
        if (value <= 5 ){
            value = 5;
        }
        _powerPoint = value;
    }

}

