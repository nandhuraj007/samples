class Car{
  int speed=0;
  double regularPrice=0;
  String color="";
  double getSalePrice(){

  }
}

class Truck extends Car{
  int weight=0;
  double getSalePrice(){
  if(weight>20000){
  return 0.1*regularPrice;
  }
  else{
    return 0.2*regularPrice;
  }
  }
}

class Ford extends Car{
  int year=0;
  int manufacturerDiscount=0;
  double getSalePrice(){

  }
}

class Sedan extends Car{
  int length=0;
  double getSalePrice(){
    if(length>20){

    }
  }

}
