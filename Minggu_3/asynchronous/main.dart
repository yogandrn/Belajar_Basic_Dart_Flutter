import 'dart:async';

void main(List<String> args) async {
  print("Persiapan, mulai..");
  print(await () async {
    String lirik = "pagiku cerah matahari bersinar...";
    return await Future.delayed(Duration(seconds: 3), (() => lirik));
  }());
  print(await () async {
    String lirik = "kugendong tas merahku, di pundak...";
    return await Future.delayed(Duration(seconds: 3), (() => lirik));
  }());

}
