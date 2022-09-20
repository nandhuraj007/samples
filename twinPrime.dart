import 'dart:io';
class GFG
{
  static void printTwinPrime( n)
  {
    List<bool> prime = List.generate(n + 1,(i_0)=>false,growable: false);
    for (var  i = 0; i <= n; i++)
    {
      prime[i] = true;
    }
    for (var  p = 2; p * p <= n; p++)
    {
      if (prime[p] == true)
      {
        for (var  i = p * 2; i <= n;
        i += p)
        {
          prime[i] = false;
        }
      }
    }
    for (var  i = 2; i <= n - 2; i++)
    {
      if (prime[i] == true && prime[i + 2] == true)
      {
        stdout.write(" (" + (i).toString() + ", " + ((i + 2)).toString() + ")");
      }
    }
  }
  static void main(List<String>args)
  {
    var  n = 100;
    GFG.printTwinPrime(n);
  }
}
void main(List< String > args){
  GFG.main(args);
}