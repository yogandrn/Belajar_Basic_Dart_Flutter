void main(){
    // print (hitung(2,6));
    print (pecahKata("Anjay"));
}
hitung(int a, int b){
        return a * b;
}
pecahKata(String a){
    var arr = a.split('');
    for (int i = 0; i < arr.length; i++){
        print(arr[i]);
    }
}