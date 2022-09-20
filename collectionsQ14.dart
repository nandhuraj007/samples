import 'dart:io';

void main(){
  var list1=[1,2,3,3,4];
  stdout.write("List before swaping: $list1");
  print("");
  int number1=list1[1];
  int number2=list1[0];
  list1.removeAt(0);
  list1.removeAt(1);
  list1.insert(0, number1);
  list1.insert(1, number2);
  stdout.write("List after swaping : $list1");
}