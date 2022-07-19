class Lingkaran{
    double jari = 0.0;
    double phi = 3.14;
  void setJari(double value){
     if(value < 0){ 
       value *= -1; 
     }
     jari = value; 
  }
  double getJari(){ 
    return jari; 
  }
  
  double hitungLuas(){
      return this. phi * jari * jari;
  }  
}


